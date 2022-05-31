//
//  File.swift
//  WWDC_ClarissaJocelyn
//
//  Created by Clarissa Jocelyn on 21/04/22.
//

import SwiftUI

struct Step12: View {
    @State var locations = CGPoint(x: 65, y: 340)
    @State var locations1 = CGPoint(x: 100, y: 340)
    @State var locations2 = CGPoint(x: 120, y: 340)
    @State var locations3 = CGPoint(x: 10, y: 520)
    @State var Kecap: String?
    @State var Bawangmerah: String?
    @State var Cabai: String?
    var body: some View {
        VStack{
            HStack{
                Image(Kecap ?? "Kecap")
                    .padding(.bottom,-30)
                    .position(x: self.locations.x, y: self.locations.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                                   self.locations.x=value.location.x
                                   self.locations.y=value.location.y
                        })
                    .onTapGesture {
                        Kecap = "Kecapcampur"
                        Bawangmerah = ""
                        Cabai = ""
                        
                    }
                Image(Cabai ?? "Cabe")
                    .padding(.bottom,-30)
                    .position(x: self.locations1.x, y: self.locations1.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                                   self.locations1.x=value.location.x
                                   self.locations1.y=value.location.y
                        })
                Image(Bawangmerah ?? "Bawangmerah")
                    .padding(.bottom,-30)
                
                    .position(x: self.locations2.x, y: self.locations2.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                                   self.locations2.x=value.location.x
                                   self.locations2.y=value.location.y
                        })
                Image("Knife")
                
                    .position(x: self.locations3.x, y: self.locations3.y)
                    .gesture(
                    DragGesture()
                        .onChanged{value in
                                   self.locations3.x=value.location.x
                        }.onEnded{value in
                            if(value.location.x > -30 && value.location.x < 120) {
                                Bawangmerah = "BawangCincang"
                                Cabai = "Cabecincang"
                            }
                        })
            }
            
            HStack{
                Spacer()
                NavigationLink(destination: Step11(), label: {
                    Image("Prev").padding(.trailing,30).padding(.bottom,20)
                    
                })
                NavigationLink(destination: Step13(), label: {
                    Image("Next").padding(.leading,30).padding(.bottom,20)
                    
                })
                Spacer()
            }
                    
        }.foregroundColor(.black).background(
            Image("Step12")
        ).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Step12_Previews: PreviewProvider {
    static var previews: some View {
        Step12()
    }
}
