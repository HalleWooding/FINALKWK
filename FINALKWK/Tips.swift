//
//  Tips.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/28/23.
//

import SwiftUI

struct Tips: View {
    var body: some View {
        ZStack {
            Color ("LightPurple")
                .ignoresSafeArea()
            VStack {
                Text("Tips")
                    .foregroundColor (.white)
                    .font(.largeTitle)
            }
        }
        
    }
}

struct Tips_Previews: PreviewProvider {
    static var previews: some View {
        Tips()
    }
}
