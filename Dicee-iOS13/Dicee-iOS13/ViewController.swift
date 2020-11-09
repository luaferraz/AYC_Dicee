//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5

    //(who.what=value) quem.qual = valor (quem vai ser 'mudado', qual propriedade desse 'quem' vai ser trocada e por ultimo qual valor essa propriedade vai receber)
    //quem            .qual  = valor
    //diceImageViewOne.alpha = 0.5

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //let é uma constante
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        // int= numero inteiro, os ... = "até" então (0..5) = de 0 até 5
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1

    }
    
}

