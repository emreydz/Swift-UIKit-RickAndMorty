//
//  RMCharacterViewController.swift
//  SwiftUIKitRickAndMortyApp
//
//  Created by Emre Yıldız on 4.06.2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
       
        RMService.shared.execute(.listCharactersRequests, expecting: RMCharacter.self){ result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
            
        }
        
    }
}
