//
//  NetworkManager.swift
//  PremiereLeague
//
//  Created by Andry Pro on 02.03.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import Foundation

class NetworkManager {
    let stringUrl = "https://api-football-beta.p.rapidapi.com/teams?league=39&season=2019"
    
    
    
    
    func fetchData(){
        guard let url = URL(string: stringUrl) else { return }
        let session = URLSession.shared
        var reguest = URLRequest(url: url)
        reguest.addValue("54af1a4903msh35823917aaff704p1dc6e7jsn819156d418b0", forHTTPHeaderField: "x-rapidapi-key")
        session.dataTask(with: reguest) { (data, responce, error) in
          
            guard let data = data else { return }
            let decoder = JSONDecoder()
           
            do {
                let clubs = try decoder.decode(Club.self, from: data)
                print(clubs)
            } catch let error {
                print(error)
            }
            
            
        }.resume()
    }
    
}
