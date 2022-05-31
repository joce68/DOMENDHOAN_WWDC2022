//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step2: View {
    @State var locations = CGPoint(x: 190, y: 430)
    var body: some View {
        VStack{
            Image("Sendok")
                .position(x: self.locations.x, y: self.locations.y)
                .gesture(
                DragGesture()
                    .onChanged{value in
                        if (value.location.x > 160 && value.location.x < 300) {
                            self.locations.x=value.location.x
                        }
                        else if(value.location.x < 160){
                            self.locations.x=160
                        }
                        else{
                            self.locations.x=300
                        }
                        
                                
                    })
            Spacer()
            HStack{
                Spacer()
                NavigationLink(destination: Step1(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                    
                })
                NavigationLink(destination: Step3(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()

            }
                    
        }.foregroundColor(.black).background(
            Image("Step2")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}


struct Step2_Previews: PreviewProvider {
    static var previews: some View {
        Step2()
    }
}
