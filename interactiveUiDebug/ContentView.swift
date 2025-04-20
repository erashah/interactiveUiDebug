//
//  ContentView.swift
//  interactiveUiDebug
//
//  Created by Era Shah on 4/20/25.
//

import SwiftUI

struct ContentView: View {
    let name = ""
//<!-- 🧐 Is this variable defined correctly? →
//<!-- 💡 Tip: Instead of a constant, try using a @State variable so it can update! -->
    @State private var food: String = ""
//<!-- 🔥 This part looks solid! -->
//<!-- 💡 Tip: Use this to model the syntax for the ‘name’ variable! -->
    @State private var showAlert = false

    var body: some View {
        VStack {
            Text("Tell us about yourself!")
                .font(.title)

            TextField("Enter name", text: name)
                .textFieldStyle(.roundedBorder)
                .padding()
//<!-- 🧐 Is the TextField accessing the state variable ‘name’ correctly? -->
            TextField("Favorite food", text: good)
//<!-- 👀 Is there a typo in the variable name? -->
                .textFieldStyle(.roundedBorder)
                .padding()

            Button("Submit") {
//<!-- 💡 Tip: Use the area inside the brackets for the button to add actions that are triggered when the button is clicked! →
//<!-- 🧐 ‘showAlert’ is still false since it has not been changed so far. Is it supposed to continue being false after the button is clicked? -->
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .alert("Thanks, \\(name)! We now know your favorite food is \\(food)!", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            }
//<!-- 💡 Tip: Use the syntax \() for string interpolation instead of \\() -->
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
