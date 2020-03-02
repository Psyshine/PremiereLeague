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
    let headerField = "x-rapidapi-key"
    let key = "54af1a4903msh35823917aaff704p1dc6e7jsn819156d418b0"
   
    
    
    
    func fetchData(){
        guard let url = URL(string: stringUrl) else { return }
        let session = URLSession.shared
        var reguest = URLRequest(url: url)
        reguest.addValue(key, forHTTPHeaderField: headerField )
        session.dataTask(with: reguest) { (data, _, error) in
          
            guard let data = data else { return }
            let decoder = JSONDecoder()
            do {
                let responces = try decoder.decode(Responce.self, from: data)
                print(responces)
            
            } catch let error {
                print(error)
            }
            
            
        }.resume()
       
    }
    
    
}
