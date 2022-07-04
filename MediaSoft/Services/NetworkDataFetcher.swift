//
//  NetworkDataFetcher.swift
//  MediaSoft
//
//  Created by Armen Safarian on 28.06.22.
//

import Foundation
class NetworkDataFetcher {
    
    var networkService = NetworkService()
    
    func fetchImages(serchTerm: String, completion: @escaping (SearchResults?) -> ()) {
        networkService.request(searchTerm: serchTerm) { (data, error) in
            if let error = error {
                print("Error received requesting gata: \(error.localizedDescription)")
                completion(nil)
            }
            
            let decode =  self.decodeJSON(type: SearchResults.self, from: data)
            completion(decode)
        }
    }
    func decodeJSON<T: Decodable>(type: T.Type, from: Data?) -> T? {
        let decoder = JSONDecoder()
        guard let data = from else { return nil }
        
        do {
            let objects = try decoder.decode(type.self, from: data)
            return objects
        } catch let jsonError {
            print("Failed to decode JSON", jsonError)
                  return nil
        }
            
            
    }
    
}
