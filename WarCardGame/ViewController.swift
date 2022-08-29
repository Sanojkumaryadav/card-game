//
//  ViewController.swift
//  WarCardGame
//
//  Created by ekincare on 28/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstCard: UIImageView!
    
    @IBOutlet weak var secondCard: UIImageView!
    
    
    @IBOutlet weak var player1: UILabel!
    
    
    @IBOutlet weak var player2: UILabel!
    var playerOneScore = 0;
    var playerSecondScore = 0;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("Loading done");
    }
    
    
    @IBAction func dealButton(_ sender: Any) {
        let firstRandomNum = Int.random(in: 2...14);
//        print(firstRandomNum);
        
        let secondRandomNum = Int.random(in: 2...14);

        
        
        firstCard.image = UIImage(named: "card\(firstRandomNum)");
        secondCard.image = UIImage(named: "card\(secondRandomNum)");
        
        if firstRandomNum > secondRandomNum {
            playerOneScore += 1;
            player1.text = String(playerOneScore);
        }else{
            playerSecondScore += 1;
            player2.text = String(playerSecondScore);
        }
    }
    

}

