//
//  ContentView.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    private var service = ApiService()
    @State private var APIgoals: [GoalType] = []
    
    var body: some View {
        VStack {
            NavigationBar()
        }.padding()
        ScrollView{
            VStack {
                FeaturesGrid()
                CarrosselTabView()
                GoalContainer(goals: APIgoals)
            }
        }.onAppear{
            getGoalsAF()
        }
    }
    
    func getGoalsAF() {
        service.getGoals {goals, error in
            if let goals = goals {
                self.APIgoals = goals
            } else {
                print("erro")
            }
        }
    }
}

#Preview {
    ContentView()
}
