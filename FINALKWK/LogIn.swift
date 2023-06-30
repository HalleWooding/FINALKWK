//
//  LogIn.swift
//  FINALKWK
//
//  Created by Jenny Trexler on 6/29/23.
//

import SwiftUI

struct LogIn: View {
    
    var username = " "
    var password = " "
    @State var inputUser = " "
    @State var inputPass = " "
    
    @State var buttonText: String = "Submit"
    @State var textOpacity = 0.0

    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [darkPurple, lightPink]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    
                    Text("Username")
                        .foregroundColor(.white)
                    TextField("", text: $inputUser)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .border(Color("Pink"), width: 0)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                        .background(Color("Pink").opacity(0.5))
                        .cornerRadius(10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(.bottom, 40)
                        
                    Text("Password")
                        .foregroundColor(.white)
                    TextField("", text: $inputPass)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .border(Color("Pink"), width: 0)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                        .background(Color("Pink").opacity(0.5))
                        .cornerRadius(10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    
                    Text("Error, try again.")
                        .padding(.bottom, 20)
                        .foregroundColor(.red).opacity(textOpacity)
                
                    
                    Button(buttonText) {
                        if (inputUser.count > 2) && (inputPass.count > 2){
                            buttonText = "Press the icon below"
                        } else {
                            textOpacity = 1
                        }
                    }
                    .padding()
                    .background(Color("LightPurple"))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(true)){
                        Image("MuseGirl")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 53.52, height: 150.0)
                            .aspectRatio(contentMode: .fit)
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, 0)                    }
                    
                    }
                    
//                    NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(true)){
//                        Text("Submit")
//                            .padding(.leading, 60)
//                            .padding(.trailing, 60)
//                            .padding(.top, 15)
//                            .padding(.bottom, 15)
//                            .foregroundColor(.white)
//                            .background(Color("Pink"))
//                            .cornerRadius(10)
//                    }
                } //VStack
            } //ZStack
        } //NavStack

    }


struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
