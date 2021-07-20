//

import SwiftUI

struct AddFriendsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    withAnimation {
                        presentationMode.wrappedValue.dismiss()
                    }
                }) {
                    Image(systemName: "chevron.down")
                }
                
                Spacer()
                
                Text("Add Friends")
                
                Spacer()
                
                Image(systemName: "ellipsis")
            }
            .font(.system(size: 23).bold())
            
            ZStack(alignment: .leading) {
                TextField("Find Friends", text: .constant(""))
                    .padding(.leading, 30)
                    .padding(10)
                    .background(Assets.shared.getColor(.lightBackground))
                    .cornerRadius(99)
                Image(systemName: "magnifyingglass")
                    .padding(.leading, 10)
                    .font(.system(size: 20))
            }
            
            VStack {
                HStack {
                    Text("Quick Add")
                    Spacer()
                    HStack {
                        Text("All Contacts")
                        Image(systemName: "chevron.right")
                    }
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                }
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 0) {
                        ForEach(0..<20) { i in
                            if i != 0 {
                                Divider()
                            }
                            
                            HStack {
                                Button(action: {
                                    
                                }) {
                                    Image(systemName: "person.fill")
                                }
                                .font(.system(size: 50))
                                .buttonStyle(ProfileButtonStyle())
                                
                                VStack(alignment: .leading) {
                                    Text("Name")
                                    Text("Username")
                                        .font(.system(size: 10))
                                        .foregroundColor(.white.opacity(0.3))
                                    Text("Tag")
                                        .font(.system(size: 15))
                                        .foregroundColor(.white.opacity(0.6))
                                }
                                
                                Spacer()
                                
                                Label("Add", systemImage: "person.fill.badge.plus")
                                    .font(.system(size: 17).bold())
                                    .padding(.horizontal)
                                    .padding(.vertical, 5)
                                    .background(Color.gray.opacity(0.3))
                                    .cornerRadius(99)
                                
                                Image(systemName: "xmark")
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        }
                    }
                    .padding(.bottom)
                }
                .padding(.bottom)
                .background(Assets.shared.getColor(.lightBackground))
                .cornerRadius(20)
                .edgesIgnoringSafeArea(.bottom)
            }
            .padding(.top, 10)
        }
        .foregroundColor(.white)
        .padding([.horizontal, .top])
        .background(Assets.shared.getColor(.darkBackground).edgesIgnoringSafeArea(.all))
    }
}

struct AddFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        AddFriendsView()
            .preferredColorScheme(.dark)
    }
}
