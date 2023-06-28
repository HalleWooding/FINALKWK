//
//  FeaturedArtist.swift
//  FINALKWK
//
//  Created by Jenny Trexler on 6/27/23.
//

import SwiftUI

struct FeaturedArtist: View {
    var body: some View {
        ZStack {
            Color("Pink")
                .ignoresSafeArea()
            
            ScrollView (showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    
                    //                Spacer()
                    
                    Image("SonyaClark-photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                    
                    Text("Sonya Clark")
                        .font(.title)
                    
                    Text("Description")
                        .font(.callout)
                    
                    Image("SonyaClark-photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                    
                } .padding()
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {}
                    }
            }
//            .frame(height: 900)
        }
    }
    
    struct FeaturedArtist_Previews: PreviewProvider {
        static var previews: some View {
            FeaturedArtist()
        }
    }
}
