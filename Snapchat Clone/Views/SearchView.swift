//

import SwiftUI

struct SearchView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                ZStack(alignment: .leading) {
                    TextField("Search", text: .constant(""))
                        .padding(.leading, 30)
                        .padding(10)
                        .background(Assets.shared.getColor(.lightBackground))
                        .cornerRadius(99)
                    Image(systemName: "magnifyingglass")
                        .padding(.leading, 10)
                        .font(.system(size: 20))
                }
                
                Button(action: {
                    withAnimation {
                        presentationMode.wrappedValue.dismiss()
                    }
                }) {
                    Text("Cancel")
                        .bold()
                }
            }
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Best Friends")
                        .bold()
                        .padding(.top)
                    
                    VStack {
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
                        Divider()
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
                    .background(Assets.shared.getColor(.lightBackground))
                    .cornerRadius(20)
                    
                    HStack {
                        Text("Recents")
                            .bold()
                        Spacer()
                        HStack {
                            Text("Clear All")
                            Image(systemName: "chevron.right")
                        }
                        .font(.system(size: 15))
                        .opacity(0.7)
                    }
                    .padding(.top)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<20) { i in
                                VStack {
                                    Circle()
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.blue)
                                        .overlay(
                                            Circle()
                                                .strokeBorder(Color.white, lineWidth: 5)
                                                .foregroundColor(.white)
                                        )

                                    Text("\(i % 2 == 0 ? "Title" : "User")")
                                        .bold()

                                    if i % 2 == 0 {
                                        Text("Lens")
                                            .padding(.top)
                                            .font(.system(size: 12))
                                            .opacity(0.7)
                                    } else {
                                        Label("Chat", systemImage: "bubble.right.fill")
                                            .padding(5)
                                            .padding(.horizontal, 5)
                                            .background(Color.white.opacity(0.1))
                                            .cornerRadius(99)
                                            .padding(.top)
                                            .font(.system(size: 12).bold())
                                            .opacity(0.7)
                                    }
                                }
                                .frame(width: 120, height: 160)
                                .background(Assets.shared.getColor(.lightBackground))
                                .cornerRadius(20)
                            }
                        }
                    }

                    VStack(alignment: .leading) {
                        Text("Happening Now")
                            .bold()

                        Text("Month 00, 0000")
                            .foregroundColor(.white.opacity(0.7))
                            .font(.system(size: 13))
                    }
                    .padding(.top)

                    VStack (alignment: .leading) {
                        HStack {
                            Circle()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                                .frame(width: 70, height: 70)
                                .overlay(
                                    Circle()
                                        .strokeBorder(Color.blue, lineWidth: 3)
                                        .foregroundColor(.white)
                                )

                            VStack(alignment: .leading) {
                                Text("News title ...")
                                HStack (spacing: 0) {
                                    Text("News source")
                                        .bold()
                                    Text(" - ")
                                    Text("Breaking")
                                        .foregroundColor(.blue)
                                    Text(" - ")
                                    Text("00m ago")
                                }
                                .font(.system(size: 15))
                            }
                        }
                        .padding(.horizontal, 10)

                        Divider()

                        HStack {
                            Spacer()
                            Text("View More")
                                .bold()
                            Spacer()
                        }
                    }
                    .padding(.vertical, 10)
                    .background(Assets.shared.getColor(.lightBackground))
                    .cornerRadius(20)

                    Text("Games & Minis")
                        .bold()
                        .padding(.top)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<20) { _ in
                                VStack {
                                    Circle()
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.blue)
                                        .overlay(
                                            Circle()
                                                .strokeBorder(Color.white, lineWidth: 5)
                                                .foregroundColor(.white)
                                        )

                                    Text("Game Name")
                                        .bold()

                                    Text("Game")
                                        .padding(.top)
                                        .font(.system(size: 12))
                                        .opacity(0.7)
                                }
                                .frame(width: 120, height: 160)
                                .background(Assets.shared.getColor(.lightBackground))
                                .cornerRadius(20)
                            }
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Quick Add")
                            .bold()
                            .padding(.top)
                        
                        VStack {
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
                            
                            Divider()
                            
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
                            
                            Divider()
                            
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
                            
                            Divider()
                            
                            HStack {
                                Spacer()
                                Text("View More")
                                    .bold()
                                    .padding(.vertical, 10)
                                Spacer()
                            }
                        }
                        .background(Assets.shared.getColor(.lightBackground))
                        .cornerRadius(20)
                        
                        Text("Trending")
                            .bold()
                            .padding(.top)
                        
                        VStack {
                            ForEach(0..<20) {i in
                                if i != 0 {
                                    Divider()
                                }
                                
                                HStack {
                                    Circle()
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.white)
                                        .frame(width: 70, height: 70)
                                        .overlay(
                                            Circle()
                                                .strokeBorder(Color.blue, lineWidth: 3)
                                                .foregroundColor(.white)
                                        )
                                    
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
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                            }
                        }
                        .background(Assets.shared.getColor(.lightBackground))
                        .cornerRadius(20)
                    }
                }
            }
        }
        .padding([.horizontal, .top])
        .background(Assets.shared.getColor(.darkBackground).edgesIgnoringSafeArea(.all))
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
