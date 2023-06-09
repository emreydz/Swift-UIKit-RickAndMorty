//
//  RMGetAllCharactersResponse.swift
//  SwiftUIKitRickAndMortyApp
//
//  Created by Emre Yıldız on 8.06.2023.
//

import Foundation

struct GetAllCharactersResponse: Codable{
    struct Info:Codable {
        let count:Int
        let pages:Int
        let next:String
        let prev:String
    }
    
    let info:Info
    let result:[RMCharacter]
}
