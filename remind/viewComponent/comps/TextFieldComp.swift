//
//  TextFieldComp.swift
//  remind
//
//  Created by Johan Nordstrand on 10/01/2025.
//

import SwiftUI

struct TextFieldComp: View {
    @Binding var text: String
    var color: Color
    var placeholder: String
    var body: some View {
        VStack(alignment: .leading){
ZStack(alignment: .leading) {
                         if text.isEmpty {
                            VStack {
                                Text(placeholder)
                                    .fontWeight(.medium)
                                     .padding(.top, 10)
                                     .padding(.leading, 6)
                                     .foregroundStyle(.purple)
                                     .opacity(0.6)
                                 Spacer()
                             }
                         }
                         
                         VStack {
                             TextEditor(text: $text)
                                 .frame(minHeight: 150, maxHeight: 100)
                                 .opacity(text.isEmpty ? 0.85 : 1)
                                 .scrollContentBackground(.hidden)
                                 .background(color.opacity(0.05))
                                 .cornerRadius(15)
                                 
                             Spacer()
                         }
                         
                     }
            
        }
    }
}

//#Preview {
//    TextFieldComp()
//}
