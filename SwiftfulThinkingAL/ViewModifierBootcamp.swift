//
//  ViewModifierBootcamp.swift
//  SwiftfulThinkingAL
//
//  Created by Mitch Andrade on 7/11/23.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
    }
    
}

extension View {
    
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
}

struct ViewModifierBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .withDefaultButtonFormatting()
            
            Text("Winning!")
                .withDefaultButtonFormatting(backgroundColor: .teal)
            
            Text("Mastery!")
                .withDefaultButtonFormatting()

            Text("Growth!")
                .withDefaultButtonFormatting(backgroundColor: .teal)

        }
    }
}

#Preview {
    ViewModifierBootcamp()
}
