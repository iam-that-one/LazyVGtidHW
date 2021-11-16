//
//  ShortcutsModel.swift
//  LazyVGtidHW
//
//  Created by Abdullah Alnutayfi on 15/11/2021.
//

import SwiftUI

struct ShortCut : Identifiable{
    let id = UUID()
    let name : String
    let icon : String
    let actions : Int
    let color : Color
}
