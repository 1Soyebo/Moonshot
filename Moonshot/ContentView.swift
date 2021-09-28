//
//  ContentView.swift
//  Moonshot
//
//  Created by Ibukunoluwa Soyebo on 27/09/2021.
//

import SwiftUI


struct ContentView: View {
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    var body: some View {
        Text("\(missions.count)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
