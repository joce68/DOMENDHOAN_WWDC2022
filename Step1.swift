//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step1: View {
    @State var locations = CGPoint(x: 70, y: 330)
    @State var locations1 = CGPoint(x: 100, y: 330)
    @State var locations2 = CGPoint(x: 120, y: 330)
    @State var locations3 = CGPoint(x: 10, y: 580)
    @State var Coriander: String?
    @State var Garlic: String?
    @State var Turmeric: String?    
    
    var body: some View {
        VStack{
            HStack{
                Image(Coriander ?? "Coriander")
                    .padding(.bottom,-30)
                    .position(x: self.locations.x, y: self.locations.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                                   self.locations.x=value.location.x
                                   self.locations.y=value.location.y
                               
                                
                        }.onEnded{ value in
                            if (value.location.x > 10 && value.location.x < 300) {
                                locations = CGPoint(x:170, y:440)
                                Coriander = "BumbuKetumbar"
                            }
                        })
                    
                Image(Garlic ?? "Garlic")
                    .padding(.bottom,-30)
                    .position(x: self.locations1.x, y: self.locations1.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                                   self.locations1.x=value.location.x
                                   self.locations1.y=value.location.y
                        }.onEnded{ value in
                            if (value.location.x > 10 && value.location.x < 300) {
                                locations1 = CGPoint(x:160, y:440)
                                Garlic = "BumbuBawangputih"
                            }
                        })
                Image(Turmeric ?? "Turmeric")
                    .padding(.bottom,-30)
                    .position(x: self.locations2.x, y: self.locations2.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                                   self.locations2.x=value.location.x
                                   self.locations2.y=value.location.y
                        }.onEnded{ value in
                            if (value.location.x > -60 && value.location.x < 220) {
                                locations2 = CGPoint(x:2, y:440)
                                Turmeric = "BumbuKunyit"
                            }
                        })
                Image("Ulekan")
                    .position(x: self.locations3.x, y: self.locations3.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                                self.locations3.x=value.location.x
                                self.locations3.y=value.location.y
                            
                        }
                        .onEnded{value in
                            if(value.location.x > -60 && value.location.x < 300) {
                                Coriander = "BumbuKetumbar"
                                Garlic = "BumbuBawangputih"
                                Turmeric = "Bumbubanyak"
                            }
                        })
            }
            

            
            HStack{
                Spacer()
                NavigationLink(destination: MaterialTools(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)

                    
                })
                    .frame(width: 150)
                NavigationLink(destination: Step2(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()

            }
                    
        }.foregroundColor(.black).background(
            Image("Step1")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step1_Previews: PreviewProvider {
    static var previews: some View {
        Step1()
    }
}
