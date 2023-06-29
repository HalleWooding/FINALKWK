//
//  Materials.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/28/23.
//

import SwiftUI

struct Materials: View {
    var body: some View {
        NavigationStack{
        ZStack {
            Color ("LightPurple")
                .ignoresSafeArea()
            VStack {
                Text("Artist's Materials")
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight (.bold)
                    .foregroundColor (.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Sonya Clark typically works with textiles. She is a mixed media artist. So, her supplies range from human hair to a typewriter! ")
                    .font(.system(.title3, design: .serif))
                    .foregroundColor (.white)
                VStack{
                    Image("HairWreath")
                        .resizable()
                           .aspectRatio(contentMode: .fit)
                           .cornerRadius (15)
                    Text ("This is the 'Hair Wreath', created from hair and wire.")
                        .font(.system(.body, design: .serif))
                        .foregroundColor(.white)
                        .fontWeight (.bold)
                        .multilineTextAlignment(.center)
                        
                    Text ("© Sonya Clark; Photo by Lee Stalsworth")
                        .font(.system(.body, design: .serif))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
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

struct Materials_Previews: PreviewProvider {
    static var previews: some View {
        Materials()
    }
}
