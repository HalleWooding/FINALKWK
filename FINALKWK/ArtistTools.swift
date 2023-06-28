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
                        
                        .padding()
                        Text("Learn where this artist found inspiration!")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .padding()
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
                        
                        .padding()
                        Text ("Learn what materials this artist gravitates towards!")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .padding()
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
                        
                        .padding()
                        Text ("A palette/palettes based on some of the artist's art!")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .padding()
                    }
                    HStack {
                        NavigationLink(destination: Tips()) {
                            Text("Artist's Tips")
                                .foregroundColor (.white)
                                .padding()
                                .background (Color("LightPurple"))
                                .fontWeight(.bold)
                                .font(.system(.title3, design: .serif))
                                .cornerRadius (10)
                        }
                        
                        .padding()
                        Text ("What niche knowledge can you learn from this artist?")
                            .foregroundColor (.white)
                            .font(.system(.title3, design: .serif))
                            .padding()
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
