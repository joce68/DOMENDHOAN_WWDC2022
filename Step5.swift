//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//
import SwiftUI

struct Step5: View {
    var body: some View {
        VStack{
            Spacer()
            
            HStack{
                Spacer()
                NavigationLink(destination: Step4(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                })
                NavigationLink(destination: Step6(), label: {
                    Image("Prev").padding(.leading,30).padding(.bottom,20)
                })
                Spacer()
            }
                    
        }.foregroundColor(.black).background(
            Image("Step5")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step5_Previews: PreviewProvider {
    static var previews: some View {
        Step5()
    }
}
