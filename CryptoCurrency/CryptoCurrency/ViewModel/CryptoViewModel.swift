//
//  CryptoViewModel.swift
//  CryptoCurrency
//
//  Created by Nazlı Bekeç on 23.03.2023.
//

import Foundation

// Liste ViewModel
struct CryptoListViewModel {
    // CryptoCurrency modelini bir liste halinde tutan bir değişken.
    let cryptoCurrencyList : [cryptoCurrency]
    
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
    
    var name : String {
        return self.cryptoCurrency.currency
    }
    var price : String {
        return self.cryptoCurrency.price
    }
}
