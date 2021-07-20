//

import SwiftUI

struct MainView: View {
    @StateObject var tabBarViewModel = TabBarViewModel()
    @State var showingAddFriends = false
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        VStack (spacing: 0) {
            ZStack (alignment: .topTrailing) {
                GeometryReader { geo in
                    ScrollView {
                        TabView (selection: $tabBarViewModel.tab) {
                            MapView()
                                .cornerRadius(15)
                                .tag(0)
                            ChatView()
                                .cornerRadius(15)
                                .tag(1)
                            CameraView()
                                .cornerRadius(15)
                                .tag(2)
                            StoriesView()
                                .cornerRadius(15)
                                .tag(3)
                            SpotlightView()
                                .cornerRadius(15)
                                .tag(4)
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(
                            height: geo.frame(in: .global).height
                        )
                    }
                }
                .edgesIgnoringSafeArea(.all)
                
                if tabBarViewModel.tab == 2 {
                    CameraSettingsButtonsView()
                }
                
                HeaderBarView {
                    if tabBarViewModel.tab != 0 && tabBarViewModel.tab != 2 && tabBarViewModel.tab != 4 {
                        Button(action: {
                            withAnimation {
                                showingAddFriends.toggle()
                            }
                        }) {
                            Image(systemName: "person.fill.badge.plus")
                        }
                    }
                    
                    Button(action: {
                        if tabBarViewModel.tab == 2 {
                            withAnimation {
                                showingAddFriends.toggle()
                            }
                        }
                    }) {
                        Image(systemName:
                            tabBarViewModel.tab == 0 ? "gearshape.fill" :
                            tabBarViewModel.tab == 1 ? "plus.bubble.fill" :
                            tabBarViewModel.tab == 2 ? "person.fill.badge.plus" :
                            tabBarViewModel.tab == 3 ? "ellipsis" :
                            tabBarViewModel.tab == 4 ? "arrow.turn.right.up" :
                            "person"
                        )
                    }
                    .offset(x: tabBarViewModel.tab == 2 ? -55 : 0)
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
        .sheet(isPresented: $showingAddFriends) { AddFriendsView() }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
