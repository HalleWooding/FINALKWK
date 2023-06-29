//
//  ContentView.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/26/23.
//

import SwiftUI

extension Color {
    init(hex string: String) {
        var string: String = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        if string.hasPrefix("#") {
            _ = string.removeFirst()
        }

        // Double the last value if incomplete hex
        if !string.count.isMultiple(of: 2), let last = string.last {
            string.append(last)
        }

        // Fix invalid values
        if string.count > 8 {
            string = String(string.prefix(8))
        }

        // Scanner creation
        let scanner = Scanner(string: string)

        var color: UInt64 = 0
        scanner.scanHexInt64(&color)

        if string.count == 2 {
            let mask = 0xFF

            let g = Int(color) & mask

            let gray = Double(g) / 255.0

            self.init(.sRGB, red: gray, green: gray, blue: gray, opacity: 1)

        } else if string.count == 4 {
            let mask = 0x00FF

            let g = Int(color >> 8) & mask
            let a = Int(color) & mask

            let gray = Double(g) / 255.0
            let alpha = Double(a) / 255.0

            self.init(.sRGB, red: gray, green: gray, blue: gray, opacity: alpha)

        } else if string.count == 6 {
            let mask = 0x0000FF
            let r = Int(color >> 16) & mask
            let g = Int(color >> 8) & mask
            let b = Int(color) & mask

            let red = Double(r) / 255.0
            let green = Double(g) / 255.0
            let blue = Double(b) / 255.0

            self.init(.sRGB, red: red, green: green, blue: blue, opacity: 1)

        } else if string.count == 8 {
            let mask = 0x000000FF
            let r = Int(color >> 24) & mask
            let g = Int(color >> 16) & mask
            let b = Int(color >> 8) & mask
            let a = Int(color) & mask

            let red = Double(r) / 255.0
            let green = Double(g) / 255.0
            let blue = Double(b) / 255.0
            let alpha = Double(a) / 255.0

            self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)

        } else {
            self.init(.sRGB, red: 1, green: 1, blue: 1, opacity: 1)
        }
    }
}

let gray0 = Color(hex: "3f")
let gray1 = Color(hex: "#69")
let gray2 = Color(hex: "#6911")
let gray3 = Color(hex: "fff")
let red = Color(hex: "#FF000044s")
let green = Color(hex: "#00FF00")
let blue0 = Color(hex: "0000FF")
let blue1 = Color(hex: "0000F")
let darkPurple = Color(hex: "3F334D")
let lightPink = Color(hex: "B6A39E")
let lightPurple = Color(hex: "574B60")

// add color in format its done in here ^
// use in code as: (Color(hex: "CDB4DB"))
// Example: .background(Color(hex: "CDB4DB"))



struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [darkPurple, lightPink]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                
                VStack{
                    ZStack{
                        Image("MuseGirl")
                            .resizable(resizingMode: .stretch)
                                                    .frame(width: 53.52, height: 150.0)
                                                .aspectRatio(contentMode: .fit)
                                                .aspectRatio(contentMode: .fit)
                        
                        Text("MUSE")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    
                    NavigationLink(destination: LogIn().navigationBarBackButtonHidden(true)){
                        Text("Log In")
                            .padding(.leading, 67)
                            .padding(.trailing, 67)
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                            .foregroundColor(.white)
                            .background(Color("Pink"))
                            .shadow(radius: 5)
                    }
                    
                    
                    NavigationLink(destination: SignUp().navigationBarBackButtonHidden(true)){
                        Text("Sign Up")
                            .padding(.leading, 60)
                            .padding(.trailing, 60)
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                            .foregroundColor(.white)
                            .background(Color("Pink"))
                            .shadow(radius: 5)
                    }
                    
                } //VStack
                
            } //ZStack
        } //NavStack
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
            }
