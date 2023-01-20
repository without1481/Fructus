//
//  ContentView.swift
//  Fructus
//
//  Created by Алина on 03.01.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings:Bool = false
    
    var fruits:[Fruit] = fruitsData
    // MARK: - BODY
    
    var body: some View {
        NavigationView(content: {
            List(fruits.shuffled()) { fruit in
                
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
                                    
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            )
        }).navigationViewStyle(.stack)
    }
}

    // MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
