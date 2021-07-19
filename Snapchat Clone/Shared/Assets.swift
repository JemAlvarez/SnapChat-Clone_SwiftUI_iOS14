//

import SwiftUI

struct Assets {
    static let shared = Assets()
    
    enum Colors {
        case green
        case blue
        case yellow
        case purple
        case red
    }
    
    func getColor(_ color: Colors) -> Color {
        switch color {
        case .green:
            return Color("green")
        case .blue:
            return Color("blue")
        case .yellow:
            return Color("yellow")
        case .purple:
            return Color("purple")
        case .red:
            return Color("red")
        }
    }
}
