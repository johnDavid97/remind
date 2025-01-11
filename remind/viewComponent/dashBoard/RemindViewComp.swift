//
//  RemindViewComp.swift
//  remind
//
//  Created by Johan Nordstrand on 09/01/2025.
//

import SwiftUI

struct RemindViewComp: View {
    let remindModel: RemindModelEx
    @State private var isPressed: Bool = false
    @State private var scale = 1.0
    
    
    var body: some View {
        VStack(alignment:.leading, spacing: 15){
            HStack{
                Spacer()
                Button(action:{
                    AnimationService.spring(
                     trigger: { isPressed.toggle() },
                     reset: { isPressed.toggle() },
                        delay: 1.0
                    )
                    print("pressed")
                }) {
                    Image(systemName: "trash")
                        .foregroundStyle(Color.red)
                        .scaleEffect(isPressed ? 0.8 : 1.0)
                }
               
            }
            

            
            VStack(alignment:.leading, spacing: 5){

            //Title
            Text(remindModel.title)
                .font(.system(size: 18, weight: .bold))
            // Description
            Text(remindModel.description)
        }
            .frame(maxWidth: .infinity, alignment: .leading)
        

        HStack{
            Image(systemName: "clock")
            Text("\(String(describing: DateService.formatDate(date: remindModel.date)))")
                          
        }
        .font(.subheadline)
        .bold()
        .padding(5)
        .foregroundStyle(Color.secondary)
        .background(Color.gray.opacity(0.2), in: Capsule())
        

        }
        .padding()
        
    }
}

#Preview {
    RemindViewComp(remindModel: RemindModelEx(id: 1, title: "Pay next bill", description: "We owe 150$ to the electric bill", date: Date(), completed: false))
}
