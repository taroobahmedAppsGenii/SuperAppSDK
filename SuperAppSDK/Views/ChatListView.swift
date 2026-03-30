//
//  ChatListView.swift
//  SuperAppSDK
//
//  Created by Taroob on 30/03/2026.
//

import SwiftUI

public struct ChatListView: View {

    public init() {}

    public var body: some View {
        List {
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
        }
        .navigationTitle("List")
    }
}
