//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Profile")
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
