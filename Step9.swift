//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step9: View {
    @State var locations = CGPoint(x: 250, y: 340)
    @State var Tempe: String?
    var body: some View {
        VStack{
            Image(Tempe ?? "Tempe")
                .position(x: self.locations.x, y: self.locations.y)
                .gesture(
                DragGesture()
                    .onChanged{value in
                               self.locations.x=value.location.x
                                self.locations.y=value.location.y
                    }.onEnded{value in
                        withAnimation{
                            if(value.location.x > 100 && value.location.x < 300) {
                                locations = CGPoint(x:250, y:320)
                                Tempe="Adonantempe"
                            }
                        }
                        
                    })
            
            HStack{
                Spacer()
                NavigationLink(destination: Step8(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                })
                NavigationLink(destination: Step10(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()
            }
                    
        }.foregroundColor(.black).background(
            Image("Step9")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step9_Previews: PreviewProvider {
    static var previews: some View {
        Step9()
    }
}
