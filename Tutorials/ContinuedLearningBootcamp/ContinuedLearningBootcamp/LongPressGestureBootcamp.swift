//
//  LongPressGestureBootcamp.swift
//  ContinuedLearningBootcamp
//
//  Created by Zachary Banken on 6/16/22.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    
    @State var isComplete: Bool = false
    @State var isSuccess: Bool = false
    
    var body: some View {
        
        VStack {
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 55)

                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            
            HStack {
                Text("click")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1, maximumDistance: 50) {
                        //start of press to min duration
                        (isPressing) in
                        if isPressing {
                            withAnimation(.easeInOut(duration: 1)) {
                                isComplete = true
                            }
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                if !isSuccess {
                                    withAnimation(.easeInOut) {
                                        isComplete = false
                                    }
                                }
                            }
                        }

                    } perform: {
                        //at min duration
                        withAnimation(.easeInOut) {
                            isSuccess = true
                        }
                    }
                Text("reset")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onTapGesture {
                        isSuccess = false
                        isComplete = false
                    }
            }
        }
        
        
//        Text(isComplete ? "incomplete" : "complete")
//            .padding()
//            .padding(.horizontal,10)
//            .background(isComplete ? Color.green: Color.gray)
//            .cornerRadius(10)
//            .onLongPressGesture(minimumDuration: 1, maximumDistance: 100) {
//                isComplete.toggle()
//            }
    }
}

struct LongPressGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureBootcamp()
    }
}
