//
//  MacBookAppApp.swift
//  MacBookApp
//
//  Created by Ayhan on 14.06.2022.
//

import SwiftUI

@main
struct MacBookAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
extension NSTextField{
    open override var focusRingType: NSFocusRingType{
        get{.none}
        set{}
    }
}
