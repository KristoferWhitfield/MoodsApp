//
//  ContentView.swift
//  MoodsApp
//
//  Created by Kristofer-Joseff Whitfield on 9/30/24.
//

import SwiftUI

enum Emoji : String, CaseIterable {
    case 😀, 😆
}

struct ContentView: View {
    @State var selection: Emoji = .😀
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                
                Picker("Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .padding()
        }
        .navigationTitle("Moods")
        .padding()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
