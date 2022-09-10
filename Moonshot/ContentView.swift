//
//  ContentView.swift
//  Moonshot
//
//  Created by Barry Barron on 8/25/22 – through 8/28/2022.
//  Challenge questions added on 9/4-9/5
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @AppStorage("showingGrid") private var showingGrid = true
    
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .toolbar {
                Button {
                    showingGrid.toggle()
                } label: {
                        if showingGrid {
                            Label("Show as table", systemImage: "list.dash")
                        } else {
                            Label("Show as grid", systemImage: "square.grid.2x2")
                    }
                }
            }
            
        }
        .navigationTitle("MoonShot")
        .background(.darkBackground)
        .preferredColorScheme(.dark)

    }
        
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
