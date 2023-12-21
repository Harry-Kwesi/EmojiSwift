//
//  ContentView.swift
//  EmojiLover
//
//  Created by Harry Kwesi De Graft on 05/12/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😌, 😀, 😂, 😎, 🤪
}
struct ContentView: View {
    @State var selection: Emoji = .😀
    var body: some View {
        NavigationView{
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self){
                        emoji in Text(emoji.rawValue)
                    }
                }
                .navigationTitle("The Emoji life!")
                .pickerStyle(.segmented)
            }
            .padding()
        }


    }
}

#Preview {
    ContentView()
}
