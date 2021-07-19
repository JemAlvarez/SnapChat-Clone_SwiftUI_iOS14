import SwiftUI

struct HeaderBarView<Buttons: View, Header: View>: View {
    @EnvironmentObject var tabBarViewModel: TabBarViewModel
    
    @ViewBuilder let buttons: () -> Buttons
    @ViewBuilder let header: () -> Header
    
    @ViewBuilder
    var body: some View {
        ZStack {
            HStack {
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "person.fill")
                            
                    }
                    .font(.system(size: 40))
                    .foregroundColor(.yellow)
                    .padding(0)
                    .background(Color.secondary.opacity(0.1))
                    .cornerRadius(99)
                    
                    Button(action: {
                        
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
