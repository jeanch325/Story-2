//
//  SecondStoryViewController.swift
//  Story 2
//
//  Created by Jean Cho on 7/5/18.
//  Copyright © 2018 Jean Cho. All rights reserved.
//

import UIKit

class SecondStoryViewController: UIViewController {
    
    //stories
    let story1 : String = "You are in a plane 13,000 feet above the ground getting ready to skydive. Out of all of your friends, you are in line to go first. You look down and see nothing but fuzzy splotches of green. All of a sudden, you feel an intense amount of regret for signing up for this in the first place."
    let answer1a : String = "You face your fears and jump."
    let answer1b : String = "You back out."
    
    let story2 : String = "Your friends make fun of you for not going. If you back out fully, you risk wasting the $400 you spent to make this trip happen AND looking like a complete loser in front of everyone you know."
    let answer2a : String = "You decide to jump."
    let answer2b : String = "You back out."
    
    let story3 : String = "You're flying!.. Well, you're actually falling, but who cares. You see the ground rushing closer and closer by the second and abruptly you realize that you don'tknow which cord to pull to inflate the parachute. Do you:"
    let answer3a : String = "Pull the red cord."
    let answer3b : String = "Pull the blue cord."
    
    let story4 : String = "It turns out, you should've jumped. The plane quickly loses fuel on the way back down the Earth and you crash and die."
    
    let story5 : String = "You pull the blue cord and thankfully, the parachute opens! Blue is always the safest choice. You make it to the ground safely and now you can impress everyone that you meet by telling them you've jumped out of a moving plane and lived."
    
    let story6 : String = "You pulled the red cord. The whole parachute comes out, but still in its folded form. You can't get it to inflate in time and you crash into the ground at full speed. You die. "

    
    @IBOutlet weak var secondStoryTextView: UITextView!
    @IBOutlet weak var secondTopButton: UIButton!
    @IBOutlet weak var secondBottomButton: UIButton!
    @IBOutlet weak var secondStoryTitle: UILabel!
    
    //var nCL = NameClassThing()
    var name = ""
    var storyIndex : Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        restart()
        secondStoryTitle.text = "\(name) goes skydiving"
        //call restart func
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if (storyIndex == 1 || storyIndex == 2) && sender.tag == 1 {  //if it is on story 1 or 2 and user presses top button
            storyIndex = 3
            secondStoryTextView.text = story3
            secondTopButton.setTitle(answer3a, for: .normal)
            secondBottomButton.setTitle(answer3b, for: .normal)
        }
        else if storyIndex == 1 && sender.tag == 2 {
            storyIndex = 2
            secondStoryTextView.text = story2
            secondTopButton.setTitle(answer2a, for: .normal)
            secondBottomButton.setTitle(answer2b, for: .normal)
        }
        else if storyIndex == 2 && sender.tag == 2 {
            storyIndex = 4
            secondStoryTextView.text = story4
            secondTopButton.isHidden = true
            secondBottomButton.isHidden = true
        }
        else if storyIndex == 3 && sender.tag == 1 {
            storyIndex = 6
            secondStoryTextView.text = story6
            secondTopButton.isHidden = true
            secondBottomButton.isHidden = true
        }
        else if storyIndex == 3 && sender.tag == 2 {
            storyIndex = 5
            secondStoryTextView.text = story5
            secondTopButton.isHidden = true
            secondBottomButton.isHidden = true
        }
        if (secondStoryTextView.text == story4 || secondStoryTextView.text == story5 || secondStoryTextView.text == story6) {
            restartAlert()
        }
    }
    
    func restartAlert () {
        //ADD TIME DELAY
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { // change 2 to desired number of seconds
            // Your code with delay
        
        let alert = UIAlertController(title: "End of Story", message: nil, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Reset", style: .default) {
            (action) -> Void in self.restart()
        }
        
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
    }
    
    
//    @IBAction func firstResetButton(_ sender: Any) {
//        restart()
//    }
    
    
    func restart () {
        storyIndex = 1
        secondStoryTextView.text = story1
        secondTopButton.isHidden = false
        secondBottomButton.isHidden = false
        secondTopButton.setTitle(answer1a, for: .normal)
        secondBottomButton.setTitle(answer1b, for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
