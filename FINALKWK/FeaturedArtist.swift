//
//  FeaturedArtist.swift
//  FINALKWK
//
//  Created by Jenny Trexler on 6/27/23.
//

import SwiftUI

struct FeaturedArtist: View {
    
//    func ArtistDescription() {
//        var Title = " "
//        var Date = " "
//
//        HStack{
//            print("\(Title)")
//
//        }
//    }
    
//    class ArtDescription {
//        var work = " "
//        var title = " "
//        var date = " "
//
//        init(artistWork: String, artistTitle: String, artistDate: String) {
//            work = artistWork
//            title = artistTitle
//            date = artistDate
//        }
//
//        func newWork() {
//            print("artistWork")
//            print("artistTitle")
//            print("artistDate")
//        }
//    }
    
    
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
//                        .cornerRadius(10)
                    
                    Text("Sonya Clark")
                        .font(.title)
                    
                    Text("Description")
                        .font(.callout)
// adjust this once you have entered text and toolbar
                        .padding(.bottom, 100)
                    
                    Spacer()
                    
//                    testing
//                    var newArt = ArtDescription(artistWork: "AfroAbe", artistTitle: "Afro Abe II", artistDate: "2012")
//                    newArt.newWork()
                    
                    
                    Image("AfroAbe")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    HStack{
                        Text("Afro Abe II")
                            .italic()
                        Text("2012")
                            .font(.footnote)
                            .fontWeight(.thin)
                            .padding(.leading, 5)
                    } .padding(.bottom, 30)
                    
                    Image("MadameCJ")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("MadameCJ2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    HStack{
                        Text("Madame CJ Walker")
                            .italic()
                        Text("2008")
                            .font(.footnote)
                            .fontWeight(.thin)
                            .padding(.leading, 5)
                    }
                        .padding(.bottom, 30)
                    
                    Image("LexieCurl")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
//                    HStack{
//                        Text("Lexie's Curl")
//                            .italic()
//                        Text("2012")
//                            .font(.footnote)
//                            .fontWeight(.thin)
//                            .padding(.leading, 5)
//                    }
                                        
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
