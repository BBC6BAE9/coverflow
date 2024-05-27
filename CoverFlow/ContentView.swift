//
//  ContentView.swift
//  CoverFlow
//
//  Created by ihenry on 2024/5/27.
//

import SwiftUI

struct ContentView: View {
    @State private var items: [CoverFlowItem] = [.red, .blue, .green, .primary].compactMap{
        return .init(color: $0)
    }
    var body: some View {
        NavigationStack {
            VStack{
                CoverFlowView(itemsWidth: 280, rotation: 10, items: items) { item in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(item.color.gradient)
                }
                .frame(height: 180)
            }
            .navigationTitle("CoverFlow")
        }
    }
}

#Preview {
    ContentView()
}
