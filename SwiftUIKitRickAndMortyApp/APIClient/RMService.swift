//
//  RMService.swift
//  SwiftUIKitRickAndMortyApp
//
//  Created by Emre Yıldız on 7.06.2023.
//

import Foundation

final class RMService {
    static let shared = RMService()
    private init(){}
    public func execute(_ request: RMRequest,completion: @escaping(Result<String, Error>) -> Void){
        
    }
}
