//

import SwiftUI

struct HeaderButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 20, height: 20)
            .font(.system(size: 17).bold())
            .foregroundColor(.white)
            .padding(12)
            .background(Color.white.opacity(0.1))
            .cornerRadius(99)
    }
}


struct ProfileButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.yellow)
            .padding(0)
            .background(Color.white.opacity(0.1))
            .cornerRadius(99)
    }
}
