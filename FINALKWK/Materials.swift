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
                    .foregroundColor (.white)
                    .font(.largeTitle)
            }
        }
    }
}

struct Materials_Previews: PreviewProvider {
    static var previews: some View {
        Materials()
    }
}
