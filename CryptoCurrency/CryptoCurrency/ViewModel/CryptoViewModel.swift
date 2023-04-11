//
//  CryptoViewModel.swift
//  CryptoCurrency
//
//  Created by Nazlı Bekeç on 23.03.2023.
//

import Foundation
import UIKit

// Liste ViewModel
struct CryptoListViewModel {
    // CryptoCurrency modelini bir liste halinde tutan bir değişken.
    let cryptoCurrencyList : [cryptoCurrency]
}

// önceden oluşturulmuş struct veya class larda değişiklik yapar. MVVM de structlar olabildiğince yalın bırakılarak extension lar kullanılır.
extension CryptoListViewModel {
    //Toplam kaç tane cryptoCurrencyList olduğunu verir.
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    //Listeyi ve tekil eleman viewModeli bağlar.
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}


// Tekil eleman ViewModel
struct CryptoViewModel {
    let cryptoCurrency : cryptoCurrency
}
extension CryptoViewModel {
    var name : String {
        return self.cryptoCurrency.currency
    }
    var price : String {
        return self.cryptoCurrency.price
    }
}
extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}
