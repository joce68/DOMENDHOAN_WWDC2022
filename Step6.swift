//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//
import SwiftUI

struct Step6: View {
    var body: some View {
        VStack{
            Spacer()
            
            HStack{
                Spacer()
                NavigationLink(destination: Step5(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                })
                NavigationLink(destination: Step7(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()
            }
                    
        }.foregroundColor(.black).background(
            Image("Step6")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step6_Previews: PreviewProvider {
    static var previews: some View {
        Step6()
    }
}
