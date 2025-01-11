//
//  NewRemindView.swift
//  remind
//
//  Created by Johan Nordstrand on 09/01/2025.
//

import SwiftUI

struct NewRemindView: View {
    @State private var isPressed = false
    @State private var scale = 1.0
    var action: () -> Void = { }

    var body: some View {
        ZStack{
            Image(systemName: "plus.circle.fill")
                .foregroundStyle(.purple)
                .font(.system(size: 75))
                .onTapGesture {
                    AnimationService.spring(
                     trigger: { isPressed.toggle() },
                     reset: { isPressed.toggle() },
                        delay: 1.0
                    )
                    action()
                }
                .scaleEffect(isPressed ? 0.8 : 1.0)
        }
    }
}

#Preview {
    NewRemindView(action: {print("Hello")})
}
