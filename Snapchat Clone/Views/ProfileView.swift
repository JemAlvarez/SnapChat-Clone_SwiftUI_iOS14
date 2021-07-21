//

import SwiftUI

struct ProfileView: View {
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
                
                Image(systemName: "gearshape.fill")
            }
            .font(.system(size: 20).weight(.heavy))
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    VStack {
                        Image("snap_code")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120)
                        
                        Text("Name")
                            .font(.system(size: 20, weight: .heavy))
                            .padding(.top)
                        
                        HStack {
                            Text("Username - 000,000,000 - ")
                            Text("Ω")
                                .padding(.horizontal, 10)
                                .padding(5)
                                .background(Color.purple)
                                .cornerRadius(99)
                        }
                        .font(.system(size: 13))
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                    HStack {
                        Text("My Stories")
                            .font(.system(size: 17).weight(.heavy))
                        Spacer()
                        Label("New Story", systemImage: "plus")
                            .font(.system(size: 15))
                            .padding(5)
                            .background(Assets.shared.getColor(.lightBackground))
                            .cornerRadius(99)
                    }
                    .padding(.top)
                    
                    ProfileSectionView {
                        Image(systemName: "camera")
                            .foregroundColor(.blue)
                    } title: {
                        Text("Add to My Story")
                    } right: {
                        Image(systemName: "ellipsis")
                    }
                    
                    Text("Spotlight & Snap Map")
                        .font(.system(size: 17).weight(.heavy))
                        .padding(.top)
                    
                    ProfileSectionView {
                        Image(systemName: "camera")
                            .foregroundColor(.blue)
                    } title: {
                        Text("Add to Snap Map")
                    } right: {
                        Image(systemName: "ellipsis")
                    }
                    
                    ProfileSectionView {
                        Image(systemName: "heart")
                            .opacity(0.3)
                    } title: {
                        Text("My Spotlight Favorites")
                    } right: {
                        Image(systemName: "chevron.right")
                    }
                    
                    Text("Public Profile")
                        .font(.system(size: 17).weight(.heavy))
                        .padding(.top)
                    
                    ProfileSectionView {
                        Image(systemName: "bookmark")
                            .opacity(0.3)
                    } title: {
                        Text("Build your public profile")
                    } right: {
                        Image(systemName: "chevron.right")
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Friends")
                            .font(.system(size: 17).weight(.heavy))
                            .padding(.top)
                        
                        ProfileSectionView {
                            Image(systemName: "person.badge.plus")
                                .opacity(0.3)
                        } title: {
                            Text("Add friends")
                        } right: {
                            Image(systemName: "chevron.right")
                        }
                        
                        VStack {
                            HStack {
                                Image(systemName: "person.3")
                                    .opacity(0.3)
                                Text("My Friends")
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            .background(Assets.shared.getColor(.lightBackground))
                            .padding(.top, 100)
                        }
                        .background(Assets.shared.getColor(.yellow))
                        .cornerRadius(20)
                    }
                }
            }
        }
        .padding([.horizontal, .top])
        .foregroundColor(.white)
        .background(Assets.shared.getColor(.darkBackground).edgesIgnoringSafeArea(.all))
    }
}

struct ProfileSectionView<Image: View, Title: View, Right: View>: View {
    @ViewBuilder var image: () -> Image
    @ViewBuilder var title: () -> Title
    @ViewBuilder var right: () -> Right
    
    @ViewBuilder
    var body: some View {
        HStack {
            image()
                .font(.system(size: 20))
            title()
            
            Spacer()
            
            right()
                .opacity(0.3)
        }
        .padding()
        .background(Assets.shared.getColor(.lightBackground))
        .cornerRadius(20)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
