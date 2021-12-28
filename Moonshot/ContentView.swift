//
//  ContentView.swift
//  Moonshot
//
//  Created by Ibukunoluwa Soyebo on 27/09/2021.
//

import SwiftUI


struct ContentView: View {
    
    @State private var isShowingDate = true
    
    var body: some View {
        NavigationView {
            List(Mission.allMissions) { mission in
                NavigationLink(destination: MissionView(mission: mission, astronauts: Astronaut.allAstronauts)) {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)

                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                        Text( isShowingDate ? mission.formattedLaunchDate:"Crew: " + mission.nameOfCrewMembers)
                    }
                }
            }
            .navigationBarTitle("Moonshot")
            .navigationBarItems(trailing: Button("Toggle Crew or LaunchDate"){
                isShowingDate.toggle()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
