//
//  HomeScreen.swift
//  FINALKWK
//
//  Created by Jenny Trexler on 6/27/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            Image("temporary")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
            Text("[artist's name]")
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
