//
//  LNSSignalStrength.swift
//
//  Created by Mark Alldritt on 2021-02-12.
//

import SwiftUI

//
//  This is a packaging of this work https://github.com/objcio/swiftui-challenges/blob/master/challenge2.md as a
//  Swift Package.
//


struct Divided<S: Shape>: Shape {
    var amount: CGFloat // Should be in range 0...1
    var shape: S
    
    func path(in rect: CGRect) -> Path {
        shape.path(in: rect.divided(atDistance: amount * rect.height, from: .maxYEdge).slice)
    }
}

extension Shape {
    func divided(amount: CGFloat) -> Divided<Self> {
        return Divided(amount: amount, shape: self)
    }
}

public struct LNSSignalStrength: View {
    
    private var bars: Int
    private let totalBars: Int

    public init(bars: Int = 3, totalBars: Int = 5) {
        self.bars = bars
        self.totalBars = totalBars
    }
    
    public var body: some View {
        HStack(alignment: .center, spacing: 2) {
            ForEach(0..<totalBars) { bar in
                RoundedRectangle(cornerRadius: 3)
                    .divided(amount: (CGFloat(bar) + 1) / CGFloat(self.totalBars))
                    .fill(Color.white.opacity(bar < self.bars ? 1 : 0.3))
            }
        }
    }
}

