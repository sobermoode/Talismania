//
//  Hand.swift
//  Talismania
//
//  Created by Aaron Justman on 6/30/19.
//  Copyright © 2019 Divided Sky. All rights reserved.
//

import SwiftUI

struct Hand : View {
    
    @State private var isFanned = false
    
    var body: some View {
        Button(action: { self.isFanned.toggle() }) {
            ZStack {
                Card(rank: "3", suit: "H")
                Card(rank: "4", suit: "S").offset(x: isFanned ? 30 : 15, y: 0).rotationEffect(Angle.degrees(isFanned ? 15 : 5)).animation(.fluidSpring())
                Card(rank: "5", suit: "D").offset(x: isFanned ? 60 : 30, y: 0).rotationEffect(Angle.degrees(isFanned ? 20 : 10)).animation(.fluidSpring())
                Card(rank: "6", suit: "C").offset(x: isFanned ? 90 : 45, y: 0).rotationEffect(Angle.degrees(isFanned ? 30 : 15)).animation(.fluidSpring())
                Card(rank: "7", suit: "H").offset(x: isFanned ? 120 : 60, y: 0).rotationEffect(Angle.degrees(isFanned ? 40 : 20)).animation(.fluidSpring())
                }.rotationEffect(Angle.degrees(isFanned ? -35 : -10)).animation(.fluidSpring())
        }
    }
}

#if DEBUG
struct Hand_Previews : PreviewProvider {
    static var previews: some View {
        Hand()
    }
}
#endif
