//

import SwiftUI

struct MainView: View {
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ScrollView {
            TabView {
                MapView()
                ChatView()
                CameraView()
                StoriesView()
                SpotlightView()
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(
                width: UIScreen.main.bounds.width ,
                height: UIScreen.main.bounds.height
            )
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
