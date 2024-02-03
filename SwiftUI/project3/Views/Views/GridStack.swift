//
//  GridStack.swift
//  Views
//
//  Created by Jeric Hernandez on 2/3/24.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int

    @ViewBuilder let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct GridContainerModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .frame(minWidth: 50, maxWidth: .infinity)
    }
}

#Preview {
    GridStack(rows: 3, columns: 3, content: { row, column in
        VStack {
            Text("R: \(row) C: \(column)")
            Text("ABCDdddddddddd")
            Text("asdf")
        }
        .modifier(GridContainerModifier())
    })
}
