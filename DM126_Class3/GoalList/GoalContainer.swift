//
//  GoalContainer.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/16/24.
//

import SwiftUI

struct GoalContainer: View {
    var goals: [GoalType]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            ForEach(goals) {
                goal in GoalListView(goal: goal)
            }
        }
    }
}

#Preview {
    GoalContainer(goals: goalMock)
}
