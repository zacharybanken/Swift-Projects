//
//  Sign.swift
//  RPS
//
//  Created by Zachary Banken on 5/12/18.
//  Copyright © 2018 Zachary Banken. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}





enum Sign {
    case rock
    case paper
    case scissors
    case nothing
}

func compareSigns(player: Sign, computer: Sign) -> GameState {
    
    
    switch player {
    case .rock:
        switch computer {
        case .paper:
            return GameState.lose
        case .rock:
            return GameState.draw
        case .scissors:
            return GameState.win
        case .nothing:
            return GameState.draw
        }
    case .paper:
        switch computer {
        case .paper:
            return GameState.draw
        case .rock:
            return GameState.win
        case .scissors:
            return GameState.lose
        case .nothing:
            return GameState.draw
        }
    case .scissors:
        switch computer {
        case .paper:
            return GameState.win
        case .rock:
            return GameState.lose
        case .scissors:
            return GameState.draw
        case .nothing:
            return GameState.draw
        }
    case .nothing:
        return GameState.draw
    }
}








