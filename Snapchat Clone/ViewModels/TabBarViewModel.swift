//

import SwiftUI

class TabBarViewModel: ObservableObject {
    @Published var tab = 2
    @Published var position: CGFloat = 0
    let tabBarViewHeight: CGFloat = 70
}
