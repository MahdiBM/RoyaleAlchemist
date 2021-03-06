import SwiftUI

struct SpringButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        let isPressed = configuration.isPressed
        let label = configuration.label
        
        return label
            .scaleEffect(isPressed ? 0.9 : 1)
            .animation(.customSpring(translation: .init(width: 50, height: 50),
                                     responseTime: 0.3,
                                     relativeValue: 50))
    }
}
