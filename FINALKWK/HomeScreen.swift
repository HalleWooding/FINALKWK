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
                                
                ZStack {
                    
                    Color("Pink")
                        .ignoresSafeArea()
                    
                    VStack(spacing: 20.0) {
                        Text("MUSE")
                            .font(.title3)
                            .foregroundColor(Color("LightPurple"))
                        Image("sonyaclarkart")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                        Text("“(We) grow very different kinds of hair, but biologically we are the same. Our hair will distinguish us into races, so hair has this way of bringing people together and also talking about racial categorization, racial subjugation, racial creativity, cultural creativity.”")
                            .multilineTextAlignment(.center)
                        Text("Sonya Clark")
                            .font(.title2)
                            .foregroundColor(Color("DarkPurple"))
                    } .padding()
                        .background(Rectangle() .foregroundColor(.white))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                }
                
                .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    ZStack {
                            
                    HStack {
                        NavigationLink(destination: Calendar()) {
                            Image(systemName: "calendar")
                                .foregroundColor(Color("DarkPurple"))
                        }.padding(.all).navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: FeaturedArtist()) {
                            Image(systemName: "sparkles")
                                .foregroundColor(Color("DarkPurple"))
                        }.padding(.all)
                        .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: ArtistTools()) {
                            Image(systemName: "wrench.and.screwdriver")
                                .foregroundColor(Color("DarkPurple"))
                        }.padding(.all)
                            .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    }
                        .background(Rectangle() .foregroundColor(Color("Yellow")))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        }
                    }
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
