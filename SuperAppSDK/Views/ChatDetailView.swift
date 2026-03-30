//
//  ChatDetailView.swift
//  SuperAppSDK
//
//  Created by Taroob on 30/03/2026.
//

import SwiftUI

public struct ChatDetailView: View {

    public let title: String

    public init(title: String) {
        self.title = title
    }

    public var body: some View {
        VStack {
            Text(title)
                .font(.headline)
            Spacer()
        }
        .navigationTitle(title)
    }
}
