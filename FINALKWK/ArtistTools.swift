//
//  ArtistTools.swift
//  FINALKWK
//
//  Created by Jenny Trexler on 6/27/23.
//

import SwiftUI


struct ArtistTools: View {
    var body: some View {
        
        
        NavigationStack {
            ZStack {
                Color ("Pink")
                    .ignoresSafeArea()
                VStack {
                    Text ("Artist Tools")
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight (.bold)
                        .foregroundColor (.white)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                    HStack {
                        NavigationLink(destination: Inspo()) {
                            Text("Artist's Inspiration")
                                .foregroundColor (.white)
                                .padding()
                                .background (Color("LightPurple"))
                                .fontWeight(.bold)
                                .font(.system(.title3, design: .serif))
                                .cornerRadius (10)
                            
                        }
                        
                        .padding(.leading, 10.0)
                        Text("Learn where this artist found inspiration!")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .padding(.trailing, 10.0)
                    }
                    HStack {
                        NavigationLink(destination: Materials()) {
                            Text("Artist's Materials")
                                .foregroundColor (.white)
                                .padding()
                                .background (Color("LightPurple"))
                                .fontWeight(.bold)
                                .font(.system(.title3, design: .serif))
                                .cornerRadius (10)
                        }
                        
                        .padding(.leading, 15.0)
                        Text ("Learn what materials this artist gravitates towards!")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .padding(.trailing, 10.0)
                    }
                    
                    HStack {
                        NavigationLink(destination: Palette()) {
                            Text("Artist's Palettes")
                                .foregroundColor (.white)
                                .padding()
                                .background (Color("LightPurple"))
                                .fontWeight(.bold)
                                .font(.system(.title3, design: .serif))
                                .cornerRadius (10)
                        }
                        
                        .padding(.leading, 13.0)
                        Text ("A palette/palettes based on some of the artist's art!")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .padding(.trailing, 10.0)
                    }
                    HStack {
                        NavigationLink(destination: Achievements()) {
                            Text("Her Achievements")
                                .foregroundColor (.white)
                                .padding()
                                .background (Color("LightPurple"))
                                .fontWeight(.bold)
                                .font(.system(.title3, design: .serif))
                                .cornerRadius (10)
                        }
                        
                        .padding(.leading, 9.91)
                        Text ("What has this artist been recognized for?")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .padding(.trailing, 10.0)
                    }
                    
                }
            }
        }
        }
    }


struct ArtistTools_Previews: PreviewProvider {
    static var previews: some View {
        ArtistTools()
    }
}
