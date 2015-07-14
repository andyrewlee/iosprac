//
//  ViewController.swift
//  05_TTT
//
//  Created by Jae Hoon Lee on 7/10/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var squareButtons: [UIButton]!
    
    @IBOutlet weak var congratulationsMessageLabel: UILabel!
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        resetGame()
        congratulationsMessageLabel.text = ""
        for button in squareButtons {
            button.backgroundColor = UIColor.lightGrayColor()
            button.enabled = true
        }
    }
    
    @IBAction func squareButtonPressed(sender: UIButton) {
        if sender.backgroundColor == UIColor.lightGrayColor() {
            if currentTurn == "Red" {
                sender.backgroundColor = UIColor.redColor()
                updateGameBoardAt(sender.tag, withColor: "Red")
                currentTurn = "Blue"
            } else {
                sender.backgroundColor = UIColor.blueColor()
                updateGameBoardAt(sender.tag, withColor: "Blue")
                currentTurn = "Red"
            }
        }
        
        updateUI()
    }
    
    var gameBoard: [Int] = [0, 0, 0,
                            0, 0, 0,
                            0, 0, 0]
    
    var gameOver = false
    var winner: String?
    var currentTurn = "Red"
    
    func updateGameBoardAt(index: Int, withColor: String) {
        if withColor == "Red" {
            gameBoard[index] = 1
        } else {
            gameBoard[index] = 2
        }
    }
    
    func resetGame() {
        gameBoard = [0, 0, 0,
                     0, 0, 0,
                     0, 0, 0]
        gameOver = false
    }
    
    func checkGame() {
        checkRows()
        checkColumns()
        checkDiagonals()
    }
    
    func checkRows() {
        for var i = 0; i <= 6; i += 3 {
            if gameBoard[i] != 0 && (gameBoard[i] == gameBoard[i + 1] && gameBoard[i + 1] == gameBoard[i + 2]) {
                declareWinner(gameBoard[i])
            }
        }
    }
    
    func checkColumns() {
        for var i = 0; i <= 2; ++i {
            if gameBoard[i] != 0 && (gameBoard[i] == gameBoard[i + 3] && gameBoard[i + 3] == gameBoard[i + 6]) {
                declareWinner(gameBoard[i])
            }
        }
    }
    
    func checkDiagonals() {
        if gameBoard[4] != 0 && (leftDiagonal() || rightDiagonal()) {
            declareWinner(gameBoard[4])
        }
    }
    
    func leftDiagonal() -> Bool {
        return gameBoard[0] == gameBoard[4] && gameBoard[4] == gameBoard[8]
    }
    
    func rightDiagonal() -> Bool {
        return gameBoard[2] == gameBoard[4] && gameBoard[4] == gameBoard[6]
    }
    
    func declareWinner(winningIndex: Int) {
        gameOver = true
        if winningIndex == 1 {
            winner = "Red"
        } else {
            winner = "Blue"
        }
    }
    
    func updateUI() {
        checkGame()
        if gameOver == true {
            if winner == "Red" {
                congratulationsMessageLabel.text = "Congrats Red Won"
            } else {
                congratulationsMessageLabel.text = "Congrats Blue Won"
            }
            
            for button in squareButtons {
                button.enabled = false
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        congratulationsMessageLabel.text = ""
        for button in squareButtons {
            button.backgroundColor = UIColor.lightGrayColor()
            button.enabled = true
        }
    }
}

