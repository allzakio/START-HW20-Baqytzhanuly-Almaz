//
//  NetworkManager.swift
//  START-HW20-Baqytzhanuly Almaz
//
//  Created by allz on 9/5/23.
//

import Foundation

class NetworkManager {
    func getCards(with queryItem: String) {
        var urlComponent = URLComponents()
        urlComponent.scheme = "https"
        urlComponent.host = "api.magicthegathering.io"
        urlComponent.path = "/v1/cards"
        urlComponent.queryItems = [URLQueryItem(name: "name", value: queryItem)]
        guard let url = urlComponent.url else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                print("error in request")
            } else if let resp = response as? HTTPURLResponse,
                      resp.statusCode == 200,
                      let responseData = data {
                if let responseCards = try? JSONDecoder().decode(Cards.self, from: responseData) {
                    if let card = responseCards.cards.first {
                        print(card)
                    }
                }
            }
        }.resume()
    }
}
