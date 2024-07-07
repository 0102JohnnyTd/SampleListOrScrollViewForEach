//
//  ListContentView.swift
//  SampleListAndForEach
//
//  Created by Johnny Toda on 2024/07/06.
//

import SwiftUI

struct ListContentView: View {
    var name: String
    var text: String
    
    private let colors: [Color] = [.red, .yellow, .green]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Circle()
                    .frame(width: 40, height: 40)
                Text(name)
                    .fontWeight(.bold)
            }
            Text(text)
                .fontWeight(.medium)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(colors, id: \.self) {
                        Rectangle()
                            .foregroundStyle($0)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
        }
    }
}

#Preview {
    ListContentView(name: "じょにー", text: "サンプルテキストサンプルテキストサンプルテキストサンプルテキスト")
}
