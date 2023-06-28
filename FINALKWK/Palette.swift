//
//  Palette.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/28/23.
//

import SwiftUI

struct Palette: View {
    var body: some View {
        ZStack {
            Color ("LightPurple")
                .ignoresSafeArea()
            VStack {
                Text("Artist's Main Palettes")
                    .foregroundColor (.white)
                    .font(.largeTitle)
            }
        }
      
    }
    
    struct Palette_Previews: PreviewProvider {
        static var previews: some View {
            Palette()
        }
    }
}
