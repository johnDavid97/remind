//
//  headerView.swift
//  remind
//
//  Created by Johan Nordstrand on 09/01/2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            
        HStack{
            Image(systemName:"brain.fill")
                .foregroundStyle(.purple)
                .font(.system(size: 20))
            
            Text("Remind")
                .font(.title)
                .fontWeight(.medium)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(10)
          
        }
       
    }
}

#Preview {
    HeaderView()
}
