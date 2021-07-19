//

import SwiftUI

struct CustomTabBarView: View {
    @EnvironmentObject var model: TabBarViewModel
    @State var positions = [CGFloat]()
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: model.tabBarViewHeight)
                .offset(y: model.tabBarViewHeight)
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                ForEach(0..<5) { i in
                    Spacer()
                    
                    GeometryReader { geo in
                        VStack {
                            switch i {
                            case 0:
                                Image(systemName: "map")
                                    .foregroundColor(model.tab == 0 ? Assets.shared.getColor(.green) : .white)
                            case 1:
                                Image(systemName: "bubble.right")
                                    .foregroundColor(model.tab == 1 ? Assets.shared.getColor(.blue) : .white)
                            case 2:
                                Image(systemName: model.tab == 2 ? "camera.viewfinder" : "camera")
                                    .foregroundColor(model.tab == 2 ? Assets.shared.getColor(.yellow) : .white)
                                    .padding(5)
                                    .background(Color.secondary.opacity(model.tab == 2 ? 1 : 0))
                                    .cornerRadius(99)
                                    .onAppear {
                                        model.position = geo.frame(in: .global).midX
                                    }
                                    .animation(.none)
                            case 3:
                                Image(systemName: "person.2")
                                    .foregroundColor(model.tab == 3 ? Assets.shared.getColor(.purple) : .white)
                            case 4:
                                Image(systemName: "play")
                                    .foregroundColor(model.tab == 4 ? Assets.shared.getColor(.red) : .white)
                            default:
                                Text("")
                            }
                        }
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .onTapGesture {
                            withAnimation {
                                model.tab = i
                            }
                        }
                        .onChange(of: model.tab) { _ in
                            if positions.count == 5 {
                                positions = []
                            }
                            positions.append(geo.frame(in: .global).midX)
                            positions = positions.sorted()
                            if positions.count == 5 {
                                withAnimation {
                                    model.position = positions[model.tab]
                                }
                            }
                        }
                    }
                    .offset(y: -((model.tabBarViewHeight / 0.9) - model.tabBarViewHeight))
                }
                
                Spacer()
            }
            
            Image(systemName: "play.fill")
                .font(.system(size: 12))
                .rotationEffect(Angle(degrees: -90))
                .position(x: model.position, y: model.tabBarViewHeight / 1.15)
                .foregroundColor(
                    model.tab == 0 ? Assets.shared.getColor(.green) :
                    model.tab == 1 ? Assets.shared.getColor(.blue) :
                    model.tab == 2 ? Assets.shared.getColor(.yellow) :
                    model.tab == 3 ? Assets.shared.getColor(.purple) :
                    model.tab == 4 ? Assets.shared.getColor(.red) :
                    .white
                )
        }
        .frame(maxHeight: model.tabBarViewHeight)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView()
            .environmentObject(TabBarViewModel())
    }
}
