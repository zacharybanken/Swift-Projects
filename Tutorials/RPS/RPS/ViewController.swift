//
//  ViewController.swift
//  RPS
//
//  Created by Zachary Banken on 5/11/18.
//  Copyright © 2018 Zachary Banken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    var randomSignRetreived = Sign.nothing
    var gameResult = GameState.start
    
    func retreiveRandomSign() -> Sign {
        
        randomSignRetreived = randomSign()
        return randomSignRetreived
    }
    
    func randomSignToString(sign: Sign) -> String {
        switch randomSignRetreived {
        case .rock:
            return  "👊"
        case .paper:
            return  "✋"
        case .scissors:
            return "✌️"
        case .nothing:
            return ""
        }
    }


    
    func updateView() {
        
        
        
        gameResult = compareSigns(player: playerSign, computer: retreiveRandomSign())

        switch gameResult {
        case .start:
            gameStatus.text = "Rock, Paper, Scissors"
            view.backgroundColor = UIColor.white
            
            computerSign.text = "🤖"
            playAgainLabel.isHidden = true
            
            rockLabel.isHidden = false
            paperLabel.isHidden = false
            scissorsLabel.isHidden = false
            
            rockLabel.isEnabled = true
            paperLabel.isEnabled = true
            scissorsLabel.isEnabled = true

            
        case .win:
            gameStatus.text = "You won"
            view.backgroundColor = UIColor.yellow
            computerSign.text = randomSignToString(sign: randomSignRetreived)
            totalWins += 1
            
        case .lose:
            gameStatus.text = "You lost"
            view.backgroundColor = UIColor.lightGray
            computerSign.text = randomSignToString(sign: randomSignRetreived)
            totalLosses += 1
            
        case .draw:
            gameStatus.text = "Draw"
            view.backgroundColor = UIColor.white
            computerSign.text = randomSignToString(sign: randomSignRetreived)

        }
        
      winsLabel.text = String(totalWins)
      lossesLabel.text = String(totalLosses)
        
        
    }
    
    func playGame() {
        computerSign.text = randomSignToString(sign: randomSignRetreived)
        rockLabel.isHidden = true
        paperLabel.isHidden = true
        scissorsLabel.isHidden = true
        playAgainLabel.isHidden = false
        updateView()
        
    }


    //Computer Labels
    @IBOutlet weak var computerSign: UILabel!
    
    @IBOutlet weak var gameStatus: UILabel!
    
    //Player sign labels
    
    @IBOutlet weak var rockLabel: UIButton!
    
    @IBOutlet weak var paperLabel: UIButton!
    
    @IBOutlet weak var scissorsLabel: UIButton!
    
    //Play Again
    
    @IBOutlet weak var playAgainLabel: UIButton!
    
    //Actions
    
    var playerSign = Sign.nothing
    
    @IBAction func rockButton(_ sender: UIButton) {
        playerSign = .rock
        playGame()
    }
    
    @IBAction func paperButton(_ sender: UIButton) {
        playerSign = .paper
        playGame()

    }
    
    @IBAction func scissorsButton(_ sender: UIButton) {
        playerSign = .scissors
        playGame()
        


    }
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        gameStatus.text = "Rock, Paper, Scissors"
        view.backgroundColor = UIColor.white
        
        computerSign.text = "🤖"
        playAgainLabel.isHidden = true
        
        rockLabel.isHidden = false
        paperLabel.isHidden = false
        scissorsLabel.isHidden = false
        
        rockLabel.isEnabled = true
        paperLabel.isEnabled = true
        scissorsLabel.isEnabled = true

            }
    
    //Wins and Losses Tally
    
    @IBOutlet weak var winsLabel: UILabel!
    
    @IBOutlet weak var lossesLabel: UILabel!
    
    var totalWins = 0
    var totalLosses = 0
    
  
}

