//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Jose Faustino on 4/7/22.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myChoice: UIImageView!
    
    @IBOutlet weak var computerChoice: UIImageView!
    
    @IBOutlet weak var threeLetterLabel: UILabel!
    
    @IBOutlet weak var HorizontalStackView: UIStackView!
    
    @IBOutlet var gameImages: [UIImageView]!
     
    var images:[UIImage] = []
    
    var iChoice = 4
    
    var RPS = ["Fish Rock", "Paper cutting Scissors", "Paper Suck"]
    
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rockFish = UIImage(named: RPS[0])
        let scissorsPaper = UIImage(named: RPS[1])
        let suckPaper = UIImage(named: RPS[2])
        images = [rockFish, scissorsPaper, suckPaper]
               as! [UIImage]
    }


    @IBAction func tapMe(_ sender: Any)
    {
        let selectedPoint = ((sender as! AnyObject).location(in: HorizontalStackView))
        
        for view in gameImages
        {
            if view.frame.contains(selectedPoint)
            {
                iChoice = view.tag
                myChoice.image = images[iChoice]
            }
        }
        
    //Assign Computer Choice Randomly
        let randomNum = Int.random(in: 0...2)
     computerChoice.image = images[randomNum]
        
    //Create the Alert Varable
        var message = "What is your name?"
        var alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
    //Call Alert for display Endgame
        if iChoice == randomNum
        {
         message = "tie"
        }
        
        else if iChoice == 1 && randomNum == 2
        {
          message = "You Win!"
        }
        
        else if iChoice == 1 && randomNum == 0
        {
          message = "You Lose!"
        }
    
    
    
    }
}

