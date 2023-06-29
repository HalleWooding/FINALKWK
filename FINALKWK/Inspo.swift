//
//  Inspo.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/27/23.
//

import SwiftUI

struct Inspo: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color ("LightPurple")
                    .ignoresSafeArea()
                VStack {
                    Text("Artist's Inspiration")
                        .foregroundColor (.white)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight (.bold)
                        .foregroundColor (.white)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("Much of Sonya's inspiration came from her family. Her parent's taught her to appreciate Afro-Caribbean traditions. Also, her maternal grandmother and grandfather were a tailor and a furniture maker/woodworker, respectively.")
                        .font(.system(.title3, design: .serif))
                        .foregroundColor (.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("She also studied with craftspeople all over the world to learn about the mediums, techniques, tools, and cultural associations that enrich her work.")
                        .font(.system(.title3, design: .serif))
                        .foregroundColor (.white)
                        .multilineTextAlignment(.center)
                }
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

struct Inspo_Previews: PreviewProvider {
    static var previews: some View {
        Inspo()
    }
}
