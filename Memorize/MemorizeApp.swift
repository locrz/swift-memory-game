//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Locrz on 15/04/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = EmojiMemoryGame()
            ContentView(viewModel: viewModel)
        }
    }
}
