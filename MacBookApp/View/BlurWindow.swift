//
//  BlurWindow.swift
//  MacBookApp
//
//  Created by Ayhan on 14.06.2022.
//

import SwiftUI

struct BlurWindow: NSViewRepresentable {
   func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow
        return view
    }
    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        
    }
}
