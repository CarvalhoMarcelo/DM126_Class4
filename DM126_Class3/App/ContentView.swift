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
    @State private var isLoading = false
    
    var body: some View {
        VStack {
            NavigationBar()
        }.padding()
        
        if self.isLoading {
            ProgressView("Carregando...")
                .progressViewStyle(CircularProgressViewStyle())
                .font(.headline)
        } else {
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    FeaturesGrid()
                    CarrosselTabView()
                    GoalContainer(goals: APIgoals)
                }
            }.onAppear{
                getGoalsAF()
            }
        }
    }
    
    func getGoalsAF() {
        self.isLoading = false
        service.getGoals {goals, error in
            DispatchQueue.main.async {
                self.isLoading = false
                if let goals = goals {
                        self.APIgoals = goals
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
