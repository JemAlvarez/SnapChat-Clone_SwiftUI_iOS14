//

import SwiftUI

struct MapView: View {
    var body: some View {
        ZStack {
            Color(.green).edgesIgnoringSafeArea(.all)
            
            Text("Map")
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
