//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //TMR: links (References Outlets) made in Main.storyboaard using GUI and assistan code view, in case of rename use "refactor->rename" to avoid broken references
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let dices = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    //TMR Action linked in Main.storyboard GUI and assistant code view (Touch UP inside)
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        if(dices.count > 0){
            diceImageView1.image = dices[ Int.random(in: 0..<dices.count) ]
            diceImageView2.image = dices[ Int.random(in: 0..<dices.count) ]
        }
    }
    
}

