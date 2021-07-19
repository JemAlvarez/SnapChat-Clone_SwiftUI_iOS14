//

import SwiftUI

struct CameraSettingsButtonsView: View {
    @State var extendedButtons = false
    
    var body: some View {
        ZStack (alignment: .trailing) {
            VStack {
                Group {
                    Text("")
                    Text("")
                    Text("")
                    Text("")
                    if extendedButtons {
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                    }
                    Text("")
                }
                .frame(height: 15)
                .padding(.bottom, 13)
            }
            .padding(.vertical, 10)
            .frame(width: 53)
            .background(Color.secondary.opacity(0.1))
            .cornerRadius(99)
            
            VStack (alignment: .trailing) {
                Group {
                    HStack {
                        Image(systemName: "arrow.triangle.capsulepath")
                            .frame(width: 20)
                    }
                    
                    HStack {
                        Image(systemName: "bolt.fill")
                            .frame(width: 20)
                    }
                    
                    HStack {
                        if extendedButtons {
                            Text("Timeline")
                                .offset(x: -20)
                        }
                        Image(systemName: "film")
                            .frame(width: 20)
                    }
                    
                    HStack {
                        if extendedButtons {
                            Text("Sounds")
                                .offset(x: -20)
                        }
                        Image(systemName: "music.note")
                            .frame(width: 20)
                    }
                    
                    if extendedButtons {
                        HStack {
                            Text("Multi Snap")
                                .offset(x: -20)
                            Image(systemName: "rectangle.fill.on.rectangle.fill")
                                .frame(width: 20)
                        }
                        
                        HStack {
                            Text("Timer")
                                .offset(x: -20)
                            Image(systemName: "timer")
                                .frame(width: 20)
                        }
                        
                        HStack {
                            Text("Focus")
                                .offset(x: -20)
                            Image(systemName: "person.fill.viewfinder")
                                .frame(width: 20)
                        }
                        
                        HStack {
                            Text("Grid")
                                .offset(x: -20)
                            Image(systemName: "squareshape.split.3x3")
                                .frame(width: 20)
                        }
                    }
                }
                .frame(height: 15)
                .font(.system(size: 17).bold())
                .foregroundColor(.white)
                .padding(.horizontal, 7)
                .padding(.bottom, 10)
                
                Button(action: {
                    withAnimation {
                        extendedButtons.toggle()
                    }
                }) {
                    Image(systemName: "chevron.\(extendedButtons ? "up" : "down")")
                }
                .frame(width: 13, height: 13)
                .font(.system(size: 13).bold())
                .foregroundColor(.white)
                .padding(10)
                .background(Color.secondary)
                .cornerRadius(99)
            }
            .padding(.horizontal, 10)
        }
        .padding(.trailing, 5)
    }
}

struct CameraSettingsButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        CameraSettingsButtonsView()
            .preferredColorScheme(.dark)
    }
}
