//
//  CircleText.swift
//  Talismania
//
//  Created by Aaron Justman on 6/29/19.
//  Copyright © 2019 Divided Sky. All rights reserved.
//

import SwiftUI

struct Card : View {
    
    let _suit: String
    var suit: String {
        var s = ""
        switch self._suit {
        case "H":
            s = "♥️"
        case "S":
            s = "♠️"
        case "D":
            s = "♦️"
        case "C":
            s = "♣️"
        default:
            s = "?"
        }
        
        return s
    }
    let rank: String
    
    init(rank: String, suit: String) {
        self._suit = suit
        self.rank = rank
    }
    
    var body: some View {
        VStack {
            HStack() {
                Text(self.rank).font(Font.system(size: 20))
                    .color((_suit == "H" || _suit == "D") ? .red : .black).offset(x: 5, y: 0)
                Text(self.suit).font(Font.system(size: 20)).frame(width: 75, alignment: Alignment.leading).offset(x: -5, y: 0)
                
            }
            ZStack(alignment: Alignment.center) {
                Text(self.suit).font(Font.system(size: 72))
                Text(self.rank).font(Font.system(size: 32))
                    .color(.white)
            }
        }
        .frame(width: 100, height: 150, alignment: .center)
        .background(Color.white)
        .border(Color.black, width: 2, cornerRadius: 15)
        .cornerRadius(15)
        .clipped()
    }
}

#if DEBUG
struct CircleText_Previews : PreviewProvider {
    static var previews: some View {
        Card(rank: "3", suit: "H")
    }
}
#endif
