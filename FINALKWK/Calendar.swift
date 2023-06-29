//
//  Calendar.swift
//  FINALKWK
//
//  Created by Jenny Trexler on 6/27/23.
//

import SwiftUI

struct Calendar: View {
    
//  PADDING VARIABLES
    var calendarPadding = CGFloat(20)
    var titlePadding = CGFloat(20)
    var titleTop = CGFloat(10)
    
//  TEXT VARIABLES
    var backgroundColorCalendar = "DarkPurple"
    var textColorCalendar = Color(red: 240, green: 240, blue: 240)
    
// OTHER
    var imageRadius = CGFloat(40)
    var imageDimensions = CGFloat(80)
    var worksOfArt = ["SonyaClark-photo", "RachelRuysch", "HungLiu", "MwangiHutter", "horseman", "mona-lisa", "starry-night"]
    
    
//  MONTH OF YEAR FUNCTION
    var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

    var firstMonth = 2

    func countingMonths(monthPosition : Int) -> String{
        let month = months[firstMonth + monthPosition]
        return(month)
    }
    
//  
    
// BODY
    var body: some View {
        NavigationStack{
            ZStack{
                Color(backgroundColorCalendar)
                    .ignoresSafeArea()
                
                VStack{
    // MONTH 1
                    HStack{
                        Text(countingMonths(monthPosition : 3))
                            .padding(.leading, titlePadding)
                            .padding(.top, titleTop)
                            .foregroundStyle(textColorCalendar)
                        Spacer()
                    }
                    
                    HStack{
                        ZStack{
                            Circle()
                            NavigationLink(destination: FeaturedArtist()){
                                Image(worksOfArt[0])
                                    .resizable(resizingMode: .stretch)
                                                            .frame(width: imageDimensions, height: imageDimensions)
                                                        .aspectRatio(contentMode: .fit)
                                                        .aspectRatio(contentMode: .fit)
                                                        .cornerRadius(imageRadius)
                            }
                        }
                        
                        ZStack{
                            Circle()
                            Image(worksOfArt[1])
                                .resizable(resizingMode: .stretch)
                                                        .frame(width: imageDimensions, height: imageDimensions)
                                                    .aspectRatio(contentMode: .fit)
                                                    .aspectRatio(contentMode: .fit)
                                                    .cornerRadius(imageRadius)

                        }
                        
                        ZStack{
                            Circle()
                            Image(worksOfArt[2])
                                .resizable(resizingMode: .stretch)
                                                        .frame(width: imageDimensions, height: imageDimensions)
                                                    .aspectRatio(contentMode: .fit)
                                                    .aspectRatio(contentMode: .fit)
                                                    .cornerRadius(imageRadius)

                        }
                        
                        ZStack{
                            Circle()
//                                .shadow(radius: 10)
                            Image(worksOfArt[3])
                                .resizable(resizingMode: .stretch)
                                                        .frame(width: imageDimensions, height: imageDimensions)
                                                    .aspectRatio(contentMode: .fit)
                                                    .aspectRatio(contentMode: .fit)
                                                    .cornerRadius(imageRadius)

                        }
                        
                        
    //                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    } .padding(.leading, calendarPadding)
                    .padding(.trailing, calendarPadding)
    // MONTH 2
                    HStack{
                        Text(countingMonths(monthPosition : 2))
                            .padding(.leading, titlePadding)
                            .padding(.top, titleTop)
                            .foregroundStyle(textColorCalendar)
                        Spacer()
                    }

                    HStack{
                        Circle()
    //                        .shadow(radius: 10)
                        ZStack{
                            Circle()
//                                .shadow(radius: 10)
                            Image(worksOfArt[4])
                                .resizable(resizingMode: .stretch)
                                                        .frame(width: 50, height: 50)
                                                    .aspectRatio(contentMode: .fit)
                                                    .aspectRatio(contentMode: .fit)
//                                                    .cornerRadius(imageRadius)

                        }
                        Circle()
                        Circle()
                    } .padding(.leading, calendarPadding)
                    .padding(.trailing, calendarPadding)
    // MONTH 3
                    HStack{
                        Text(countingMonths(monthPosition : 1))
                            .padding(.leading, titlePadding)
                            .padding(.top, titleTop)
                            .foregroundStyle(textColorCalendar)
                        Spacer()
                    }

                    HStack{
                        Circle()
    //                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Circle()
                        ZStack{
                            Circle()
//                                .shadow(radius: 10)
                            Image(worksOfArt[5])
                                .resizable(resizingMode: .stretch)
                                                        .frame(width: 50, height: 50)
                                                    .aspectRatio(contentMode: .fit)
                                                    .aspectRatio(contentMode: .fit)
//                                                    .cornerRadius(imageRadius)

                        }
                        Circle()
                    } .padding(.leading, calendarPadding)
                    .padding(.trailing, calendarPadding)
                    
    // MONTH 4
                    HStack{
                        Text(countingMonths(monthPosition : 0))
                            .padding(.leading, titlePadding)
                            .padding(.top, titleTop)
                            .foregroundStyle(textColorCalendar)
                        Spacer()
                    }

                    HStack{
                        ZStack{
                            Circle()
//                                .shadow(radius: 10)
                            Image(worksOfArt[6])
                                .resizable(resizingMode: .stretch)
                                                        .frame(width: 50, height: 50)
                                                    .aspectRatio(contentMode: .fit)
                                                    .aspectRatio(contentMode: .fit)
//                                                    .cornerRadius(imageRadius)

                        }
//                        Circle()
    //                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Circle()
                        Circle()
                        Circle()
                    } .padding(.leading, calendarPadding)
                    .padding(.trailing, calendarPadding)
                    
                    .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        ZStack {
                        HStack {
                            NavigationLink(destination: HomeScreen()) {
                                Image(systemName: "house")
                                    .foregroundColor(Color("DarkPurple"))
                            }.padding(.all).navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            NavigationLink(destination: FeaturedArtist()) {
                                Image(systemName: "sparkles")
                                    .foregroundColor(Color("DarkPurple"))
                            }.padding(.all)
                            .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            NavigationLink(destination: ArtistTools()) {
                                Image(systemName: "wrench.and.screwdriver")
                                    .foregroundColor(Color("DarkPurple"))
                            }.padding(.all)
                                .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        }
                            .background(Rectangle() .foregroundColor(Color("Yellow")))
                            .cornerRadius(15)
                            .shadow(radius: 15)
                            }
                        }
                    }// Toolbar
                    
                } // VStack
            } // ZStack
        } // NavStack
        
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
