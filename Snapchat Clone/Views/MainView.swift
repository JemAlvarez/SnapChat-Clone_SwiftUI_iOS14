//

import SwiftUI

struct MainView: View {
    @StateObject var tabBarViewModel = TabBarViewModel()
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        VStack (spacing: 0) {
            ZStack (alignment: .top) {
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
                
                HeaderBarView {
                    if tabBarViewModel.tab != 0 && tabBarViewModel.tab != 4 {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "person.fill.badge.plus")
                        }
                    }
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName:
                            tabBarViewModel.tab == 0 ? "gearshape.fill" :
                            tabBarViewModel.tab == 1 ? "plus.bubble.fill" :
                            tabBarViewModel.tab == 2 ? "arrow.triangle.capsulepath" :
                            tabBarViewModel.tab == 3 ? "ellipsis" :
                            tabBarViewModel.tab == 4 ? "arrow.turn.right.up" :
                            "person"
                        )
                    }
                } header: {
                    if tabBarViewModel.tab == 0 {
                        Text("Map")
                    } else if tabBarViewModel.tab == 1 {
                        Text("Chat")
                    } else if tabBarViewModel.tab == 2 {
                        Text("")
                    } else if tabBarViewModel.tab == 3 {
                        Text("Stories")
                    } else if tabBarViewModel.tab == 4 {
                        Text("Spotlight")
                    } else {
                        Text("")
                    }
                }

            }
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
