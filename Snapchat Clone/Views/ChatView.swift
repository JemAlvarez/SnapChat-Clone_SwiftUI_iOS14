//

import SwiftUI

struct ChatView: View {
    var body: some View {
        ZStack {
            Color(.blue).edgesIgnoringSafeArea(.all)
            
            Text("Chat")
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
