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
    @State private var isLoading = true
    
    var body: some View {
        VStack {
            if self.isLoading {
                ProgressView("Carregando...")
                    .progressViewStyle(CircularProgressViewStyle())
                    .font(.headline)
            } else {
                VStack {
                    NavigationBar()
                }.padding()
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        FeaturesGrid()
                        CarrosselTabView()
                        GoalContainer(goals: APIgoals)
                    }
                }
            }
        }.onAppear {
            getGoalsAF()
        }
    }
    
    func getGoalsAF() {
        service.getGoals {goals, error in
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
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
