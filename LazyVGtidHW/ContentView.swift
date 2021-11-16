//
//  ContentView.swift
//  LazyVGtidHW
//
//  Created by Abdullah Alnutayfi on 15/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        TabView{
            MainView()
                .tag(0)
                .tabItem {
                    Image(systemName: "rectangle.grid.2x2")
                    Text("My shortcuts")
                }
            Text("Second View")
                .tag(0)
                .tabItem {
                    Image(systemName: "deskclock.fill")
                    Text("Animation")
                }
            Text("Third View")
                .tag(0)
                .tabItem {
                    Image(systemName: "square.2.stack.3d.top.filled")
                    Text("Gallery")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
