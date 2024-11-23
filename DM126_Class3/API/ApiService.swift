//
//  ApiService.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/23/24.
//

import Foundation
import Alamofire

struct ApiService {
    func getGoals(completion: @escaping ([GoalType]?, Error?) -> Void) {
        AF.request("https://private-6d862a-marcelocarvalho.apiary-mock.com/goals")
            .responseDecodable(of: [GoalType].self) {
                response in switch response.result {
                case .success(let goals):
                    print(goals)
                    completion(goals, nil)
                case .failure(let error):
                    print("Erro: \(error)")
                    completion(nil, error)
                }
            }
    }
}
