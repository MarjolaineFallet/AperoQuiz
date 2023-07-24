//
//  HomeViewModel.swift
//  Apéro Quiz
//
//  Created by Nathan Fallet on 24/07/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var players = [Player]()
    @Published var addingPlayer = ""
    @Published var playing = false
    
    func addPlayer() {
        guard !players.contains(where: { $0.name == addingPlayer }) else { return }
        players.append(Player(name: addingPlayer))
        addingPlayer = ""
    }
    
    func play() {
        playing = true
    }
    
}
