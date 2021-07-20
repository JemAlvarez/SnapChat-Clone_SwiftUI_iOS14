//

import SwiftUI

struct SearchView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Search")
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
