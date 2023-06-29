//
//  Palette.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/28/23.
//

import SwiftUI

struct Palette: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color ("LightPurple")
                    .ignoresSafeArea()
                ScrollView (showsIndicators: false) {
                    
                    VStack {
                        Text("Artist's Main Palettes")
                            .foregroundColor (.white)
                            .font(.system(.largeTitle, design: .serif))
                            .fontWeight (.bold)
                            .foregroundColor (.white)
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Image ("palette1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius (15)
                            .padding()
                        Text ("Sonya tends to use more neutral colors in many of her works.")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .foregroundColor (.white)
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Image ("palette2")
                            .resizable(capInsets: EdgeInsets())
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius (15)
                            .padding(.horizontal)
                        HStack{
                            Spacer()
                            Image("down-arrow")
                            Spacer()
                        }.padding(.bottom, 40)
                        
                        Image ("palette3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius (15)
                            .padding()
                        Text ("But she has also created works with rich colors.")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .foregroundColor (.white)
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding()
                        Image ("palette4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius (15)
                            .padding()
                        
                    }
                }
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
    struct Palette_Previews: PreviewProvider {
        static var previews: some View {
            Palette()
        }
    }
