//
//  Materials.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/28/23.
//

import SwiftUI

struct Materials: View {
    var body: some View {
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
    }
}

struct Materials_Previews: PreviewProvider {
    static var previews: some View {
        Materials()
    }
}
