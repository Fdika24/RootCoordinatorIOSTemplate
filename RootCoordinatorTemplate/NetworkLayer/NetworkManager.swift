//
//  NetworkManager.swift
//  RootCoordinatorTemplate
//
//  Created by Farhandika on 26/03/22.
//

import Foundation

class NetworkManager {
    
    func request<T: Decodable>(
        target: NetworkAPI,
        completion: @escaping (Result<T, Error>) -> ()) {
            let url = target.urlComponent!.url!
            let request = URLRequest(url: url )
            
            let task = URLSession.shared.dataTask(with: request) { (data,_,error) in
                
                if let data = data {
                    do  {
                        let result = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(result))
                    } catch {
                        completion(.failure(error))
                    }
                }
            }
            task.resume()
    }
}
