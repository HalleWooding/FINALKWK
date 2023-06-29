//
//  FeaturedArtist.swift
//  FINALKWK
//
//  Created by Jenny Trexler on 6/27/23.
//

// RESIZING IMAGES
//.resizable(resizingMode: .stretch)
//                        .frame(width: 200.0, height: 200.0)
//                    .aspectRatio(contentMode: .fit)
//                    .aspectRatio(contentMode: .fit)

// TAKING OUT BACK BUTTON
//.navigationBarBackButtonHidden(true)
// EXAMPLE
//NavigationLink(destination: ArtistTools()
//    .navigationBarBackButtonHidden(true)){
//    Image("tools-icon")
//}


import SwiftUI

struct FeaturedArtist: View {
        //{
        // func ArtistDescription() {
        //        var Title = " "
        //        var Date = " "
        //
        //        HStack{
        //            print("\(Title)")
        //
        //        }
        //    }
        // }
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
                
                VStack(alignment: .center){
                    Image("SonyaClark-photo")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
                        .resizable(resizingMode: .stretch)
                        .frame(width: 340.0, height: 391.86)
                                            .aspectRatio(contentMode: .fit)
                                            .aspectRatio(contentMode: .fit)
                                            .padding(.top, 15)
                }
                
                VStack(alignment: .leading) {
                    
                    //                Spacer()
                    
                    
//                        .padding(.top, 10)
//                        .border(Color.white, width: 3)
//                        .cornerRadius(10)
                    
                    Text("Sonya Clark")
                        .font(.title)
                        .padding(.leading, 10)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                    
                    Text("Sonya Clark is Professor of Art at Amherst College in Amherst, Massachusetts. Her work has been exhibited in over 350 museum and galleries in the Americas, Africa, Asia, Europe and Australia. She is the recipient of a United States Artists Fellowship, a Pollock Krasner award, an 1858 Prize, an Art Prize Grand Jurors Award, an Anonymous Was a Woman Award. Most recently, and a Black Rock Senegal Residency Fellowship.")
                        .font(.callout)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                        .padding(.bottom, 5)
// adjust this once you have entered text and toolbar
//                        .padding(.bottom, 150)
                    
//                    VStack(alignment: .center){
//                        Image("down-arrow")
//                    }
                    
                    HStack{
                        Spacer()
                        Image("down-arrow")
                        Spacer()
                    }.padding(.bottom, 40)
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
                    
//                    Image("LexieCurl")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
                    
//                    HStack{
//                        Text("Lexie's Curl")
//                            .italic()
//                        Text("2012")
//                            .font(.footnote)
//                            .fontWeight(.thin)
//                            .padding(.leading, 5)
//                    }
                                        
                } .padding()
                
            }
            .frame(height: 750)
        }
    }
    
    struct FeaturedArtist_Previews: PreviewProvider {
        static var previews: some View {
            FeaturedArtist()
        }
    }
}
