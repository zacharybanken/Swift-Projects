//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI



struct OnboardingView: View {
    
    //Onbarding States:
    /*
     0 -> welcome
     1 -> name
     2 -> age
     3 -> gender
     */
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    //inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    //alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    //storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    var body: some View {
        ZStack{
            
            RadialGradient(gradient: Gradient(
                           colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color.blue]),
                           center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                           startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/,
                           endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            
            //content
            
            switch onboardingState {
            case 0:
                welcomeSection
                    .transition(transition)
            case 1:
                addNameSection
                    .transition(transition)
            case 2:
                addAgeSection
                    .transition(transition)
            case 3:
                addGenderSection
                    .transition(transition)
            default:
                ProfileView()
            
            }
            
            
            //buttons
            
            VStack {
                Spacer()
                
                if onboardingState <= 3 {
                    bottomButton
                }
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }

}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            //.background(Color.purple.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}

//MARK: Components

extension OnboardingView {
    
    private var bottomButton: some View {
        
        
        Text(onboardingState == 0 ? "Sign Up" :
            onboardingState == 3 ? "Finish" :
            "Next"
        )
            .font(.headline)
            .foregroundColor(.purple)
            .padding()
            .frame(height: 50)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                nextButtonPressed()
                
            }
        
        
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            Text("Find Match")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .overlay(
                    Capsule(style: .circular)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                
                )
            Text("In this app you will find a match")
                .foregroundColor(.white)
                .fontWeight(.medium)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your name?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            TextField("Enter Name", text: $name)
                .font(.headline)
                .background(Color.white)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your Age?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
        
    }
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your gender?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
        
            
            Picker(selection: $gender,
                   label:
                    Text(gender.count > 1 ? gender : "select gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                   ,
                   content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
            })
            .pickerStyle(SegmentedPickerStyle())
            
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
        
    }
    
    //MARK: Functions
    
}

extension OnboardingView {
    
    func nextButtonPressed() {
        
        //check inputs
        
        switch onboardingState {
        case 1:
            guard name.count >= 2 else {
                showAlert(title: "Name is too short! \n 😅")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "please select gender")
                return
            }
            
            
        default:
            break
                
            
        }
        
        
        //go to next
        if onboardingState == 3 {
             //sign in
            onboardingState += 1
            signIn()
            
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
       }
        
        
    }
        
    
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    func signIn() {
        currentUserAge = Int(age)
        currentUserName = name
        currentUserGender = gender
        
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
        
    }
    
    
}
