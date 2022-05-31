//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step11: View {
    var body: some View {
        VStack{
            Spacer()
            
            HStack{
                Spacer()
                NavigationLink(destination: Step10(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                })
                NavigationLink(destination: Step12(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()
            }
        }.foregroundColor(.black).background(
            Image("Step11")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step11_Previews: PreviewProvider {
    static var previews: some View {
        Step11()
    }
}
