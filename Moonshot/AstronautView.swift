//
//  AstronautView.swift
//  Moonshot
//
//  Created by Ibukunoluwa Soyebo on 29/09/2021.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    let astronautMissions: [Mission]

    init(astronaut: Astronaut, astronautMissions:[Mission] = []){
        self.astronaut = astronaut
        
        var missions = [Mission]()
        
        let _ = Mission.allMissions.map({
            for hmm in $0.crew{
                if hmm.name == astronaut.id{
                    missions.append($0)
                }
            }
        })
        self.astronautMissions = missions
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(self.astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width)

                    Text(self.astronaut.description)
                        .padding()
                        .layoutPriority(1)
                    
                    ForEach(self.astronautMissions){ oneMission in
                        HStack{
                            Image(oneMission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 44, height: 44)

                            VStack(alignment: .leading) {
                                Text(oneMission.displayName)
                                    .font(.headline)
                                Text(oneMission.formattedLaunchDate)
                            }
                        }
                        .padding()
                        .frame(width: geometry.size.width, alignment: .leading)
                        
                    }
                    
                    
                }
            }
        }
        .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static var previews: some View {
        AstronautView(astronaut: Astronaut.allAstronauts[0], astronautMissions: Mission.allMissions)
    }
}
