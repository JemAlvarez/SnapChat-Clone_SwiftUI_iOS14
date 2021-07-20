import SwiftUI

struct HeaderBarView<Buttons: View, Header: View>: View {
    @EnvironmentObject var tabBarViewModel: TabBarViewModel
    
    @ViewBuilder let buttons: () -> Buttons
    @ViewBuilder let header: () -> Header
    
    @State var showingSearch = false
    @State var showingProfile = false
    
    @ViewBuilder
    var body: some View {
        ZStack {
            HStack {
                HStack {
                    Button(action: {
                        withAnimation {
                            showingProfile.toggle()
                        }
                    }) {
                        Image(systemName: "person.fill")
                            
                    }
                    .font(.system(size: 40))
                    .buttonStyle(ProfileButtonStyle())
                    
                    Button(action: {
                        withAnimation {
                            showingSearch.toggle()
                        }
                    }) {
                        Image(systemName: "magnifyingglass")
                    }
                    .buttonStyle(HeaderButtonStyle())
                }
                
                Spacer()
                
                buttons()
                    .buttonStyle(HeaderButtonStyle())
            }
            .padding(.horizontal, 10)
            
            header()
                .font(.system(size: 20).bold())
                .foregroundColor(.white)
                .autocapitalization(.words)
        }
        .sheet(isPresented: $showingSearch) { SearchView() }
        .sheet(isPresented: $showingProfile) { ProfileView() }
    }
}

struct HeaderBarView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBarView(buttons: {
            Button(action: {
                
            }) {
                Image(systemName: "person")
            }
            .buttonStyle(HeaderButtonStyle())
            
            Button(action: {
                
            }) {
                Image(systemName: "person")
            }
            .buttonStyle(HeaderButtonStyle())
        }, header: {
            Text("afsd")
        })
        .environmentObject(TabBarViewModel())
        .preferredColorScheme(.dark)
    }
}
