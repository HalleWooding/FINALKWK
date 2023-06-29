//
//  SignUp.swift
//  FINALKWK
//
//  Created by Jenny Trexler on 6/29/23.
//

import SwiftUI

struct SignUp: View {
    @State var username = "Username"
    @State var password = "Password"
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [darkPurple, lightPink]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    Text("Username")
                        .foregroundColor(.white)
                    TextField("", text: $username)
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
                    TextField("", text: $password)
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
                    
                    NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(true)){
                        Text("Submit")
                            .padding(.leading, 60)
                            .padding(.trailing, 60)
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                            .foregroundColor(.white)
                            .background(Color("Pink"))
                            .cornerRadius(10)
                    }
                } //VStack
            } //ZStack
        } //NavStack
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
