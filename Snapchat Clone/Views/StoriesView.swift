//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ZStack {
            Assets.shared.getColor(.purple).edgesIgnoringSafeArea(.all)
            
            Text("Stories")
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
