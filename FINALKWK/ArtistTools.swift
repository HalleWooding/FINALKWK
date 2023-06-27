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
            VStack {
                HStack {
                    NavigationLink(destination: Inspo()) {
                        Text("Artist's Inspiration")
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .font(.system(.title3, design: .rounded))
                            .cornerRadius (10)
                    }
                    
                    .padding()
                    Text("Learn where this artist found inspiration!")
                }
                HStack {
                    NavigationLink(destination: Inspo()) {
                        Text("Artist's Materials")
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .font(.system(.title3, design: .rounded))
                            .cornerRadius (10)
                    }
                    
                    .padding()
                    Text ("Learn how")
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
