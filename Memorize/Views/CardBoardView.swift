//
//  CardBoardView.swift
//  Memorize
//
//  Created by Владислав Баранкевич on 03.04.2024.
//

import SwiftUI

struct CardBoardView: View {
    let flags = ["🇺🇦", "🇱🇹", "🇷🇴", "🇫🇮", "🇫🇷", "🇪🇸", "🇯🇵", "🇰🇷"]
    @State var cardCount = 4
    
    var body: some View {
        VStack(spacing: 10) {
            ScrollView {
                cards
            }
            
            Spacer()
            
            cardCountAdjuster
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: flags[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundStyle(.pink)
    }
    
    var cardCountAdjuster: some View {
        HStack {
            cardRemover
            
            Spacer()
            
            cardAdder
        }
        .imageScale(.large)
    }
    
    var cardRemover: some View {
        cardCountAdjuster(by: -1, symbol: "minus")
    }
    
    var cardAdder: some View {
        cardCountAdjuster(by: +1, symbol: "plus")
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button {
            cardCount += offset
        } label: {
            Image(systemName: symbol)
        }
        .disabled(cardCount + offset < 1 || cardCount + offset > flags.count)
    }
}

#Preview {
    CardBoardView()
}
