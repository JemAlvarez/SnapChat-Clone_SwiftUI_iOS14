//

import SwiftUI

struct SpotlightView: View {
    var body: some View {
        ZStack {
            Color(.red).edgesIgnoringSafeArea(.all)
            
            Text("Spotlight")
        }
    }
}

struct SpotlightView_Previews: PreviewProvider {
    static var previews: some View {
        SpotlightView()
    }
}
