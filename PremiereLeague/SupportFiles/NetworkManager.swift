//
//  NetworkManager.swift
//  PremiereLeague
//
//  Created by Andry Pro on 02.03.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import Foundation

class NetworkManager {
    // MARK: - Private Properties
    private let stringUrl = "https://api-football-beta.p.rapidapi.com/teams?league=39&season=2019"
    private let headerField = "x-rapidapi-key"
    private let key = "375f877e78msh226342c7681f19bp14645bjsndbe607cdd077"
    
    // MARK: - Public Properties
    var teams: Responce?
    
    // MARK: - Public Methods
    func fetchData() {
        guard let url = URL(string: stringUrl) else { return }
        let session = URLSession.shared
        var reguest = URLRequest(url: url)
        reguest.addValue(key, forHTTPHeaderField: headerField )
        session.dataTask(with: reguest) { (data, _, error) in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            do {
                self.teams = try decoder.decode(Responce.self, from: data)
                print(self.teams as Any)
                DispatchQueue.main.async {
                    let teamListVS = TeamListViewController()
                    teamListVS.tableView.reloadData()
                }
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
