//
//  ContentView.swift
//  Mumbai Type
//
//  Created by Ashish on 21/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput: String = "iqTHe"
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("नमस्कार, मंडळी!")
            }
            .padding()

            Text(toDevnagiri(alphabetic: userInput))
                .textSelection(.enabled)

            TextField("Type here...", text: $userInput)
                .padding(20)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
