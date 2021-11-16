//
//  MainView.swift
//  LazyVGtidHW
//
//  Created by Abdullah Alnutayfi on 15/11/2021.
//

import SwiftUI
struct MainView : View{
    @State var search = ""
    @StateObject var viewModel = ShortCutsViewModel()
    var gridItemLayot = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItemLayot, alignment: .leading, spacing: 10, content: {
                    ForEach(search == "" ? viewModel.shortCats : viewModel.shortCats.filter{$0.name.lowercased().contains(search.lowercased())}){ shortcut in
                        VStack{
                            HStack{
                                Image(systemName: shortcut.icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30 , height: 30)
                                    .foregroundColor(.white)
                                Spacer()
                                Button {
                                    
                                } label: {
                                    Image(systemName: "ellipsis.circle.fill")
                                        .foregroundColor(.white)
                                }
                            }
                            Spacer()
                            HStack{
                                Text(shortcut.name)
                                    .minimumScaleFactor(0.1)
                                Spacer()
                            }
                            HStack{
                                Text("\(shortcut.actions) actions")
                                    .font(.caption)
                                Spacer()
                            }
                        }
                        .frame(width: 130, height: 100)
                        .padding()
                        .background(shortcut.color)
                        .cornerRadius(10)
                        .padding()
                        .foregroundColor(.white)
                        .navigationTitle(Text("All Shortcuts"))
                        .navigationBarItems(
                            leading: Button(action: {}){
                                HStack{
                                    Image(systemName: "chevron.backward")
                                    Text("Shortcuts")
                                }.foregroundColor(.blue)
                            }
                            ,trailing: Button(action:{}){
                                HStack{
                                    Text("Select")
                                    Image(systemName: "plus")
                                    
                                }.foregroundColor(.blue)
                            }
                        )
                        
                    }
                }
                )
            }.searchable(text: $search)
        }
    }
}

