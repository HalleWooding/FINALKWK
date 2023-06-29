//
//  Tips.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/28/23.
//

import SwiftUI

struct Achievements: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color ("LightPurple")
                    .ignoresSafeArea()
                VStack {
                    Text("Her Achievements")
                        .foregroundColor (.white)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight (.bold)
                        .foregroundColor (.white)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("Sonya Clark has recieved:")
                        .font(.system(.title2, design: .serif))
                        .foregroundColor (.white)
                        .padding()
                    Text("+ Anonymous Was A Woman Award (2016)")
                        .font(.system(.title3, design: .serif))
                        .foregroundColor (.white)
                        .padding([.top, .leading, .trailing], 20.0)
                    Text("+ ArtPrize Juried Grand Prize (co-winner, 2014)")
                        .font(.system(.title3, design: .serif))
                        .foregroundColor (.white)
                        .padding(.all, 20.0)
                    Text("+ Smithsonian Artist Research Fellowship (2010 and 2011)")
                        .font(.system(.title3, design: .serif))
                        .foregroundColor (.white)
                        .padding(.all, 20.0)
                    NavigationLink(destination: AWAW()) {
                        Text("What is Anonymous Was A Woman?")
                            .foregroundColor (.white)
                            .padding()
                            .background (Color("Pink"))
                            .fontWeight(.bold)
                            .font(.system(.title3, design: .serif))
                            .cornerRadius (10)
                            .padding()
                        
                        
                    }
                }
            }
            
        }
    }
}
    
    struct Achievements_Previews: PreviewProvider {
        static var previews: some View {
            Achievements()
        }
    }

