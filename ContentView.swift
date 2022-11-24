//
//  ContentView.swift
//  GPX TRACK
//
//  Created by Flavio Maria Lombardi on 18/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView{
                Route().tabItem {
                    Label ("Route",systemImage: "point.topleft.down.curvedto.point.bottomright.up")
                }
                Record().tabItem {
                    Label("Record",systemImage:
                            "record.circle")
                }
                Maps().tabItem {
                    Label("Record",systemImage:
                            "map")
                }
                }
            .accentColor(Color.yellow)
        }
        .accentColor(.yellow)
        .preferredColorScheme(.dark)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
