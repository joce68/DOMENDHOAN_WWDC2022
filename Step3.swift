//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step3: View {
    @State var locations = CGPoint(x: 220, y: 530)
    @State var locations1 = CGPoint(x: 230, y: 130)
    @State var Selada: String?
    var body: some View {
        VStack{
            Image(Selada ?? "Selada")
                .position(x: self.locations.x, y: self.locations.y)
                .gesture(
                DragGesture()
                    .onChanged{value in
                               self.locations.x=value.location.x
                    })
            Image("Knife")
                .position(x: self.locations1.x, y: self.locations1.y)
                .gesture(
                DragGesture()
                    .onChanged{value in
                               self.locations1.x=value.location.x
                    }
                    .onEnded{ value in
                        withAnimation{
                            locations1 = CGPoint(x: 230, y: 130)
                            Selada = "Muncangiris"
                        }
                    })
                
            Spacer()
            HStack{
                Spacer()
                NavigationLink(destination: Step2(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                })
                NavigationLink(destination: Step4(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()
            }
                    
        }.foregroundColor(.black).background(
            Image("Step3")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step3_Previews: PreviewProvider {
    static var previews: some View {
        Step3()
    }
}
