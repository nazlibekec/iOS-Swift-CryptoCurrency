//
//  WebService.swift
//  CryptoCurrency
//
//  Created by Nazlı Bekeç on 23.03.2023.
//

import Foundation

class webService {
    func downloadCurrencies (url: URL, completion: @escaping ([cryptoCurrency]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
              let cryptoList = try? JSONDecoder().decode([cryptoCurrency].self, from: data)
               
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
                
               
            }
        } .resume()
    }
}
