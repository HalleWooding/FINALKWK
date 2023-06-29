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
    
    
//  MONTH OF YEAR FUNCTION
    var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

    var firstMonth = 0

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
                                Image("SonyaClark-photo")
                                    .resizable(resizingMode: .stretch)
                                                            .frame(width: imageDimensions, height: imageDimensions)
                                                        .aspectRatio(contentMode: .fit)
                                                        .aspectRatio(contentMode: .fit)
                                                        .cornerRadius(imageRadius)
                            }
                        }
                        
                        ZStack{
                            Circle()
                            Image("RachelRuysch")
                                .resizable(resizingMode: .stretch)
                                                        .frame(width: imageDimensions, height: imageDimensions)
                                                    .aspectRatio(contentMode: .fit)
                                                    .aspectRatio(contentMode: .fit)
                                                    .cornerRadius(imageRadius)

                        }
                        
                        ZStack{
                            Circle()
                            Image("HungLiu")
                                .resizable(resizingMode: .stretch)
                                                        .frame(width: imageDimensions, height: imageDimensions)
                                                    .aspectRatio(contentMode: .fit)
                                                    .aspectRatio(contentMode: .fit)
                                                    .cornerRadius(imageRadius)

                        }
                        
                        ZStack{
                            Circle()
//                                .shadow(radius: 10)
                            Image("MwangiHutter")
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
                        Circle()
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
                        Circle()
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
                            Image("star-color")
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
                                NavigationLink(destination: ArtistTools()
                                    .navigationBarBackButtonHidden(true)){
                                    Image("tools-icon-white")
                                }.padding(.leading, 20)
                                NavigationLink(destination: FeaturedArtist()){
                                    Image("sparkle-icon-white")
                                }.padding(.trailing, 20)
                                
    //                                ToolbarItem(destination: FeaturedArtist()){
    //                                    Image(systemName: "bus")
    //                                }
                                
                            }
                    } // Toolbar
                    
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
