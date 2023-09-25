//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate : Date = Date()
    let startingDate : Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endingDate : Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ZStack {
            VStack {
                
                Text("selected date is:")
                Text(dateFormatter.string(from: selectedDate))
                    .font(.title)
                
                DatePicker("select date",
                           selection: $selectedDate,
                           in: startingDate...endingDate,
                           displayedComponents: [.date,.hourAndMinute]
                           )
                
                
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
                
                Spacer()
            }
            
            
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
