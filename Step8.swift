//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step8: View {
    @State var locations = CGPoint(x: 100, y: 475)
    @State var locations1 = CGPoint(x: 100, y: 475)
    @State var Minyak: String?
    var body: some View {
        VStack{
            HStack{
                    
                Image(Minyak ?? "Kompor")
                    .position(x: self.locations1.x, y: self.locations1.y)
                    .onTapGesture {
                        locations = CGPoint(x: 100, y: 475)
                        Minyak = "Minyakbelummatang"
                    }
                    
            }
            
            HStack{
                Spacer()
                NavigationLink(destination: Step7(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                })
                NavigationLink(destination: Step9(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()
            }
                    
        }.foregroundColor(.black).background(
            Image("Step8")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step8_Previews: PreviewProvider {
    static var previews: some View {
        Step8()
    }
}
