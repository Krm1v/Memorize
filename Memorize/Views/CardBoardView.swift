//
//  CardBoardView.swift
//  Memorize
//
//  Created by Владислав Баранкевич on 03.04.2024.
//

import SwiftUI

struct CardBoardView: View {
    let flags = ["🇺🇦", "🇱🇹", "🇷🇴", "🇫🇮"]
    
    var body: some View {
        HStack {
            ForEach(flags, id: \.self) { flag in
                CardView(content: flag)
            }
        }
        .padding()
    }
}

#Preview {
    CardBoardView()
}
