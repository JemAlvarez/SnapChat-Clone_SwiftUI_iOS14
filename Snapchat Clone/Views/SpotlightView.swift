//

import SwiftUI

struct SpotlightView: View {
    var body: some View {
        ZStack {
            Assets.shared.getColor(.red).edgesIgnoringSafeArea(.all)
            
            Text("Spotlight")
        }
    }
}

struct SpotlightView_Previews: PreviewProvider {
    static var previews: some View {
        SpotlightView()
    }
}
