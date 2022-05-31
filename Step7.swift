//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step7: View {
    @State var locations = CGPoint(x: 80, y: 430)
    @State var locations1 = CGPoint(x: 20, y: 490)
    @State var Muncang: String?
    var body: some View {
        VStack{
            HStack{
                Image(Muncang ?? "Muncang")
                    .position(x: self.locations.x, y: self.locations.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                                   self.locations.x=value.location.x
                                   self.locations.y=value.location.y
                        }.onEnded{ value in
                            Muncang = "Muncang"
                        })
                
                Image("Sendok2")
                    .position(x: self.locations1.x, y: self.locations1.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                            if (value.location.x > -10 && value.location.x < 80) {
                                self.locations1.x=value.location.x
                            }
                            else if(value.location.x < 80){
                                self.locations1.x = -10
                            }
                            else{
                                self.locations1.x=80
                            }
                        }.onEnded{value in
                            if(value.location.x > -40 && value.location.x < 300) {
                                locations = CGPoint(x:225, y:500)
                                Muncang="Adonanmuncang"
                            }
                        })
                
            }
        
            
            HStack{
                Spacer()
                NavigationLink(destination: Step6(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                })
                NavigationLink(destination: Step8(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()
            }
                    
        }.foregroundColor(.black).background(
            Image("Step7")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step7_Previews: PreviewProvider {
    static var previews: some View {
        Step7()
    }
}
