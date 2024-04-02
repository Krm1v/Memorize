//
//  CardBoardView.swift
//  Memorize
//
//  Created by Владислав Баранкевич on 03.04.2024.
//

import SwiftUI

struct CardBoardView: View {
    var body: some View {
        HStack {
            ForEach(1..<5) { _ in
                CardView()
            }
        }
        .padding()
    }
}

#Preview {
    CardBoardView()
}
