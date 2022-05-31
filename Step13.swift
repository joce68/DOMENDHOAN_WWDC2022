//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step13: View {
    var body: some View {
        VStack{
            Spacer()
            
            NavigationLink(destination: ContentView(), label: {
                Image("Home")
                
            })
                    
        }.foregroundColor(.black).background(
            Image("Step13")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step13_Previews: PreviewProvider {
    static var previews: some View {
        Step13()
    }
}
