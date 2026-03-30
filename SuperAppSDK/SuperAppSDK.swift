//
//  SuperAppSDK.swift
//  SuperAppSDK
//
//  Created by Taroob on 30/03/2026.
//

import SwiftUI
import Foundation

public class GCMessengerApp {

    // Returns a SwiftUI View wrapped in AnyView
    public static func launch() -> AnyView {
        return AnyView(GCMessengerRootView())
    }
}


public struct GCMessengerRootView: View {

    private let config: GCMessengerConfig?
    @Environment(\.dismiss) private var dismiss

    public init(config: GCMessengerConfig? = nil) {
        self.config = config
    }

    public var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

                if let config = config {
                    Text("Welcome, \(config.userName)!")
                        .font(.headline)
                }

                Image(systemName: "message.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.blue)

                Text("GC Messenger")
                    .font(.largeTitle)
                    .bold()

                Spacer()
            }
            .padding()
            .navigationTitle("Messenger")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") {
                        dismiss()
                    }
                }
            }
        }
    }
}


public struct GCMessengerConfig {
    public let userId: String
    public let userName: String
    public let authToken: String

    public init(userId: String, userName: String, authToken: String) {
        self.userId = userId
        self.userName = userName
        self.authToken = authToken
    }
}

// Extended launch with config
extension GCMessengerApp {
    public static func launch(config: GCMessengerConfig) -> AnyView {
        return AnyView(GCMessengerRootView(config: config))
    }
}
