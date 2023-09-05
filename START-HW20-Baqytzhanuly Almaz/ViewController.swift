//
//  ViewController.swift
//  START-HW20-Baqytzhanuly Almaz
//
//  Created by allz on 9/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    let networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkManager.getCards(with: "Opt")
        networkManager.getCards(with: "Black%Lotus")
    }
}
