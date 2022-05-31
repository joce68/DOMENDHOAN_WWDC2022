//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step10: View {
    @State var locations = CGPoint(x: 220, y: 230)
    @State var Tempeoil: String?
    var body: some View {
        VStack{
            Image(Tempeoil ?? "Adonantempe")
                .position(x: self.locations.x, y: self.locations.y)
                .gesture(
                    DragGesture()
                        .onChanged{value in
                            self.locations.x=value.location.x
                            self.locations.y=value.location.y
                        }.onEnded{value in
                            if(value.location.x > 100 && value.location.x < 300) {
                                locations = CGPoint(x:195, y:423)
                                Tempeoil = "Minyaktempe"
                            }
                        })
            
            HStack{
                Spacer()
                NavigationLink(destination: Step9(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                })
                NavigationLink(destination: Step11(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()
            }
            
        }.foregroundColor(.black).background(
            Image("Step10")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step10_Previews: PreviewProvider {
    static var previews: some View {
        Step10()
    }
}
