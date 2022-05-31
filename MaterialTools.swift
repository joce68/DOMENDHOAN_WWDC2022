//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct MaterialTools: View {
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                NavigationLink(destination: ContentView(), label: {
                    Image("Prev").padding(.trailing, 30).padding(.bottom,30)
                    
                })
//                Spacer()
//                    .frame(width: 150)
                NavigationLink(destination: Step1(), label: {
                    Image("Next").padding(.leading, 30).padding(.bottom,30)
                    
                })
                Spacer()
            }
                    
        }.foregroundColor(.black).background(
            Image("BahandanAlat")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        
    }
}

struct MaterialTools_Previews: PreviewProvider {
    static var previews: some View {
        MaterialTools()
    }
}
