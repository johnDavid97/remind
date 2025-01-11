//
//  TitleTextFieldComp.swift
//  remind
//
//  Created by Johan Nordstrand on 10/01/2025.
//

import SwiftUI

struct TitleTextFieldComp: View {
    @Binding var title: String
    var body: some View {
        VStack(alignment: .leading){
            TextField("", text: $title, prompt: Text("Whats your reminder?").foregroundColor(.purple.opacity(0.5)))
                .cornerRadius(20)
                .padding(10)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.purple.opacity(0.3), lineWidth: 2)
                }
        }
    }
}

//#Preview {
//    TitleTextFieldComp()
//}
