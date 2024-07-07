//
//  SampleForEachView.swift
//  SampleListAndForEach
//
//  Created by Johnny Toda on 2024/07/06.
//

import SwiftUI

struct SampleForEachView: View {
    private let profiles = [
        Profile(name: "じょに1", text: "おはよう"),
        Profile(name: "じょに2", text: "こんにちは"),
        Profile(name: "じょに3", text: "こんばんは")
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("ForEachです")
                    .font(.title)
                    .fontWeight(.black)
                ForEach(profiles, id: \.self) {
                    ListContentView(name: $0.name, text: $0.text)
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding()
    }
}

#Preview {
    SampleForEachView()
}
