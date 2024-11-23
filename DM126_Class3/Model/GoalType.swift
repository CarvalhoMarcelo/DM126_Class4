//
//  GoalType.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/16/24.
//

import Foundation

struct GoalType : Identifiable, Decodable {
    let id: Int
    let icone: String
    let titulo: String
    let descricao: String
}
