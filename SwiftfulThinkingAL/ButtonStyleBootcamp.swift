//
//  ButtonStyleBootcamp.swift
//  SwiftfulThinkingAL
//
//  Created by Mitch Andrade on 8/1/23.
//

import SwiftUI

struct ButtonPressableStyle: ButtonStyle {
    
    let scaledAmount: CGFloat
    
    init(scaledAmount: CGFloat = 0.9) {
        self.scaledAmount = scaledAmount
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaledAmount : 1.0)
//            .brightness(configuration.isPressed ? 0.80 : 0)
//            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
    
}

extension View {
    
    func withPressableStyle() -> some View {
        self.buttonStyle(ButtonPressableStyle())
    }
}

struct ButtonStyleBootcamp: View {
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Click Me")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: Color.blue.opacity(0.3),
                        radius: 10, x: 0.0, y: 10)
        })
        .buttonStyle(ButtonPressableStyle())
        .padding(40)
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
