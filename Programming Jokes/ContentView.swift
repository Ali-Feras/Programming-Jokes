//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Ali on 26/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(destination: Text(joke.punchline)
                    .padding()) {
                        Text(joke.setup)
                    }
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear {
            getJokes()
        }
    }
    func getJokes() {
          let apiKeey = "?rapidapi-key=05f449da62msh370ceb6d1410ef5p1864afjsn99d62602e505"
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup = ""
    var punchline = ""
}
