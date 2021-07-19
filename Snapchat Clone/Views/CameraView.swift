//

import SwiftUI

struct CameraView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack(spacing: 30) {
                    Spacer()
                    
                    Image(systemName: "rectangle.on.rectangle.angled")
                    
                    Circle().strokeBorder(Color.white, lineWidth: 10)
                        .frame(width: 100)
                    
                    Image(systemName: "face.smiling")
                    
                    Spacer()
                }
                .font(.system(size: 23))
                .frame(height: 85)
                .padding(.bottom, 20)
            }
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
            .preferredColorScheme(.dark)
    }
}
