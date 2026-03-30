//
//  SuperAppSDK.swift
//  SuperAppSDK
//
//  Created by Taroob on 30/03/2026.
//

import SwiftUI
import Foundation

public struct SuperAppSDKConfig {
    public let userId: String
    public let userName: String
    public let authToken: String

    public init(userId: String, userName: String, authToken: String) {
        self.userId = userId
        self.userName = userName
        self.authToken = authToken
    }
}

public class SuperAppSDKApp {

    // Returns a SwiftUI View wrapped in AnyView
    public static func launch() -> AnyView {
        return AnyView(SuperAppSDKRootView())
    }
    
    public static func launch(config: SuperAppSDKConfig?) -> AnyView {
        return AnyView(SuperAppSDKRootView(config: config))
    }
}


public struct SuperAppSDKRootView: View {

    private let config: SuperAppSDKConfig?
    @Environment(\.dismiss) private var dismiss

    public init(config: SuperAppSDKConfig? = nil) {
        self.config = config
    }

    public var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image(systemName: "app.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.blue)

                
                Text("Super App")
                    .font(.largeTitle)
                    .bold()

                if let config = config {
                    Text("Welcome, \(config.userName)!")
                        .foregroundColor(.secondary)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Super App")
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
