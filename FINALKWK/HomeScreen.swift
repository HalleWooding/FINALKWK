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
            ZStack {
                Color("Pink")
                    .ignoresSafeArea()
                NavigationStack {
                    HStack {
                        NavigationLink(destination: Calendar()) {
                            Image(systemName: "calendar.badge.clock")
                        NavigationLink (destination: FeaturedArtist()) {
                            Image(systemName: "paintbrush")
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
}
