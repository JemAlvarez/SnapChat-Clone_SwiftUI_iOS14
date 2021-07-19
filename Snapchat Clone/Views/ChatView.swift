//

import SwiftUI

struct ChatView: View {
    var body: some View {
        ZStack {
            Assets.shared.getColor(.blue).edgesIgnoringSafeArea(.all)
            
            Text("Chat")
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
