//
//  HomeScreen.swift
//  FINALKWK
//
//  Created by Jenny Trexler on 6/27/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20.0) {
            
            NavigationStack {
                
                HStack {
                    NavigationLink(destination: Calendar()) {
                        Image(systemName: "calendar.badge.clock")
                            .foregroundColor(Color("DarkPurple"))
                            .padding(.all)
                    }
                    NavigationLink(destination: FeaturedArtist()) {
                        Image(systemName: "sparkles")
                            .foregroundColor(Color("DarkPurple"))
                            .padding(.all)
                    }
                    NavigationLink(destination: Text("system settings")) {
                        Image(systemName: "gearshape")
                            .foregroundColor(Color("DarkPurple"))
                            .padding(.all)
                    }
                }

            ZStack {
                
                Color("Pink")
                    .ignoresSafeArea()
                
                VStack(spacing: 20.0) {
                    Image("temporary")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    Text("[artist's name]")
                    Text("[artist's quote]")
                } .padding()
                    .background(Rectangle() .foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
            }
            }
        }
    }
}
    
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
        }
    }
