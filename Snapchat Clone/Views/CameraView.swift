//

import SwiftUI

struct CameraView: View {
    var body: some View {
        ZStack {
            Assets.shared.getColor(.yellow).edgesIgnoringSafeArea(.all)
            
            Text("Camera")
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
