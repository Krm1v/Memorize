//
//  CardView.swift
//  Memorize
//
//  Created by Владислав Баранкевич on 03.04.2024.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    @State var isFaceUp = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                
                Text("🇺🇦")
                    .font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .foregroundStyle(.pink)
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    CardView()
}
