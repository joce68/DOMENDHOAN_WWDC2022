import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                
                NavigationLink(destination: MaterialTools(), label: {
                    Image("StartButton")
                    
                })
                        
            }.foregroundColor(.black).background(
                Image("Backgroundsplashscreen")
            ).edgesIgnoringSafeArea(.all).padding(.leading, 0)
        }.navigationBarHidden(true)
            .onAppear {
                UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                AppDelegate.lockscreen = .portrait
            }
            .onDisappear{
                AppDelegate.lockscreen = .all
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
