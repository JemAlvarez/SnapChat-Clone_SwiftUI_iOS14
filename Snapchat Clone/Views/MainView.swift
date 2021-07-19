//

import SwiftUI

struct MainView: View {
    @StateObject var tabBarViewModel = TabBarViewModel()
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        VStack (spacing: 0) {
            GeometryReader { geo in
                ScrollView {
                    TabView (selection: $tabBarViewModel.tab) {
                        MapView()
                            .tag(0)
                        ChatView()
                            .tag(1)
                        CameraView()
                            .tag(2)
                        StoriesView()
                            .tag(3)
                        SpotlightView()
                            .tag(4)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .frame(
                        height: geo.frame(in: .global).height
                    )
                }
            }
            .cornerRadius(15)
            .edgesIgnoringSafeArea(.all)
            CustomTabBarView()
        }
        .environmentObject(tabBarViewModel)
        .background(Color.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
