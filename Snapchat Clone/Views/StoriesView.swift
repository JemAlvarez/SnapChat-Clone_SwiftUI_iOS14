//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ZStack {
            Color(.purple).edgesIgnoringSafeArea(.all)
            
            Text("Stories")
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
