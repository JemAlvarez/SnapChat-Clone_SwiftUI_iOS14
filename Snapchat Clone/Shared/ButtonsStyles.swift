//

import SwiftUI

struct HeaderButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 20, height: 20)
            .font(.system(size: 17).bold())
            .foregroundColor(.white)
            .padding(12)
            .background(Color.secondary.opacity(0.1))
            .cornerRadius(99)
    }
}
