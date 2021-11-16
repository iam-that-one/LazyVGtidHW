//
//  ShortCutsViewModel.swift
//  LazyVGtidHW
//
//  Created by Abdullah Alnutayfi on 15/11/2021.
//

import SwiftUI

class ShortCutsViewModel : ObservableObject{
    @Published var shortCats = [
        ShortCut(name: "Apple Frame", icon: "square", actions: 169, color: .blue),
        ShortCut(name: "Twitter Video Downloader", icon: "arrow.down.square.fill", actions: 67, color: .green),
        ShortCut(name: "Calculate Tip", icon: "dollarsign.circle.fill", actions: 17, color: .blue),
        ShortCut(name: "XS Frames", icon: "phone.fill", actions: 55, color: .orange),
        ShortCut(name: "What's a shortcut?", icon: "square.2.stack.3d", actions: 37, color: .purple),
        ShortCut(name: "Take a Break", icon: "clock.arrow.circlepath", actions: 13, color: .red),
        ShortCut(name: "Text Last Image", icon: "plus.message.fill", actions: 2, color: .green),
        ShortCut(name: "Shazam shortcut", icon: "waveform.path", actions: 32, color: .pink)
    ]
}
