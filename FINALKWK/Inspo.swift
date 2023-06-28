//
//  Inspo.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/27/23.
//

import SwiftUI

struct Inspo: View {
    var body: some View {
        ZStack {
            Color ("LightPurple")
                .ignoresSafeArea()
            VStack {
                Text("Artist Inspiration")
                    .foregroundColor (.white)
                    .font(.largeTitle)
            }
        }
    }
}

struct Inspo_Previews: PreviewProvider {
    static var previews: some View {
        Inspo()
    }
}
