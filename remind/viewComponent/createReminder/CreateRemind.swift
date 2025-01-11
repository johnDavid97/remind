//
//  CreateRemind.swift
//  remind
//
//  Created by Johan Nordstrand on 10/01/2025.
//

import SwiftUI

struct CreateRemind: View {
    @State private var title: String = ""
    @State private var descript: String = ""
    
    var body: some View {
        VStack{
            TitleTextFieldComp(title: $title)
        
        VStack(alignment: .leading){
            TextFieldComp(text: $descript,color: .purple, placeholder: ("Do you want to elaborate?"))
        }
            
        }
        .padding()
    }
}

#Preview {
    CreateRemind()
}
