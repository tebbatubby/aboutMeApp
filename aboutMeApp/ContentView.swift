//
//  ContentView.swift
//  aboutMeApp
//
//  Created by Scholar on 6/23/23.
//
// .sheet(isPresented: $showDetail){
// put stuff in between curly
// }
// on button use self.showDetails = true
// CORNER RADIUS

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    @State private var teaButton = false
    var body: some View {
        ZStack{
            Color.purple
                .ignoresSafeArea(.all)
            VStack {
                Image("prof")
                    .cornerRadius(10)
                Text("About Me!")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(Color.white)
                Button("Learn More...") {
                    self.showDetails = true
                } // end BUTTON
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.purple)
                .border(Color.white, width: 2)
                .cornerRadius(5)
            } // end ORGINAL VSTACK
            .padding()
        } // end ZSTACK (BG)
        .sheet(isPresented: $showDetails){
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack{
                    Text(" ")
                        .font(.title)
                    HStack{
                        
                        ZStack{
                                Color.purple
                                    .cornerRadius(10)
                            VStack{
                                Text("hey! my name is tessa, but i usually go by tess. I'm 15 years old and I've been coding since I was in 1st grade!")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                            }// end of VSTACK
                        } // end 1st ZSTACK
                        Image("prof2")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                    }
                     // end of first row HSTACK
                    ZStack{
                        Color.purple
                            .cornerRadius(10)
                        Text("i'm a rising sophmore going into rths. as of right now, i'm interested in entering into ai/ml, architecture, or engineering. in my free time, i draw and i was a national-level rock climber for 8 years before i picked up pole vaulting. ")
                            .font(.title3)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        
                            .padding(.all)
                    } // end 2nd ZSTACK
                    
                    Text("")
                
                    HStack{
                        Image("prof3")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)

                        ZStack{
                            Color.purple
                                .cornerRadius(10)
                            VStack{
                                Text("<- village idiot")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Text("that's my sister tea :(")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                
                                    .padding(.all)
                                
                                Button("You'll Regret Clicking This.") {
                                    self.teaButton = true
                                }
                                .buttonStyle(.borderedProminent)
                                .font(.title2)
                                .tint(.purple)
                                .border(Color.white, width: 2)
                                .cornerRadius(5)
                            }
                        } // end 3rd ZSTACK
                        } // end HSTACK
                } // end VSTACK
            } // end of SECOND ZSTACK
            .sheet(isPresented: $teaButton){
                ZStack{
                    Color.purple
                        .ignoresSafeArea(.all)
                    VStack{
                        Text(" ")
                            .font(.title)
                        HStack{
                            Image("tea9")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                            Image("tea2")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                        }
                        HStack{
                            Image("tea3")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                            Image("tea4")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                        }
                        HStack{
                            Image("tea5")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                            Image("tea6")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                        }
                        HStack{
                            Image("tea7")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                            Image("tea8")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        } // end of SHEET
    } // end BODY
} // end STRUCT

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// updated on git as on 6/26
