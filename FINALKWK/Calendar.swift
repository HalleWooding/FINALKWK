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
//                Color(backgroundColorCalendar)
//                    .ignoresSafeArea()
                VStack{
    // MONTH 1
                    HStack{
                        Text(countingMonths(monthPosition : 0))
                            .padding(.leading, titlePadding)
                            .padding(.top, titleTop)
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
    // MONTH 2
                    HStack{
                        Text(countingMonths(monthPosition : 1))
                            .padding(.leading, titlePadding)
                            .padding(.top, titleTop)
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
                        Text(countingMonths(monthPosition : 2))
                            .padding(.leading, titlePadding)
                            .padding(.top, titleTop)
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
                        Text(countingMonths(monthPosition : 3))
                            .padding(.leading, titlePadding)
                            .padding(.top, titleTop)
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
                        ZStack {
                                
                        HStack {
                            NavigationLink(destination: HomeScreen()) {
                                Image(systemName: "house")
                                    .foregroundColor(Color("Yellow"))
                            }.padding(.all)
                                .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            NavigationLink(destination: FeaturedArtist()) {
                                Image(systemName: "sparkles")
                                    .foregroundColor(Color("Yellow"))
                            }.padding(.all)
                                .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            NavigationLink(destination: ArtistTools()) {
                                Image(systemName: "wrench.and.screwdriver")
                                    .foregroundColor(Color("Yellow"))
                            }.padding(.all)
                                .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        }
                            .background(Rectangle() .foregroundColor(Color("DarkPurple")))
                            .cornerRadius(15)
                            .shadow(radius: 15)
                            }
                        }
                    }
                    
                } // VStack
            } //ZStack
        } // NavStack
        
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
