//
//  ThirdStoryViewController.swift
//  Story 2
//
//  Created by Jean Cho on 7/5/18.
//  Copyright © 2018 Jean Cho. All rights reserved.
//

import UIKit

class ThirdStoryViewController: UIViewController {
    
    //stories
    let story1 : String = "You're in space stuck on an alien ship. The aliens have strapped you in a chair and locked it with a key located in the pocket of what appears to be the main alien, who happens to be right next to you,facing the other way. One key point to note is that all of the aliens are equipped with laser guns. Do you:"
    let answer1a : String = "Try to grab the key."
    let answer1b : String = "Stay put."
    
    let story2 : String = "The aircraft starts to flash red lights and the aliens start panicking. The contraints you are put in come loose, but the security aliens are still watching to make sure you stay in place. Do you:"
    let answer2a : String = "Escape!"
    let answer2b : String = "Stay put."
    
    let story3 : String = "The aliens didn't catch you and you made it out of the main room! In front of you, you see two possible exit points to take: a small door leading to an escape shuttle guarded by another alien or a bigger door with an unknown destination with no alien. Which door do you take? "
    let answer3a : String = "Small door."
    let answer3b : String = "Big door."
    
    let story4 : String = "As you sit there, you see the aliens begin to panic more and more. The red lights continue to flash and you realize you should have left. The spaceship begins to shut down and you die."
    
    let story5 : String = "You whip te big door open and are immediately confronted by a giant group of aliens who all simultaneously turn around and look at you. You try to run, but they swarm you and kill you."
    
    let story6 : String = "Luckily, you are strong enough to knock the guard alien out. You go through the door and escape through the emergency shuttle. As you soar away, you see the main spaceship slowly start to shut down. You made it out alive!"
    
    @IBOutlet weak var thirdStoryTextView: UITextView!
    @IBOutlet weak var thirdTopButton: UIButton!
    @IBOutlet weak var thirdBottomButton: UIButton!
    @IBOutlet weak var thirdStoryTitle: UILabel!
    
    //var nCL = NameClassThing()
    var storyIndex : Int = 1
    var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        restart()
        thirdStoryTitle.text = "\(name)'s space adventure"
        // call restart
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        if (storyIndex == 1 || storyIndex == 2) && sender.tag == 1 {  //if it is on story 1 or 2 and user presses top button
            storyIndex = 3
            thirdStoryTextView.text = story3
            thirdTopButton.setTitle(answer3a, for: .normal)
            thirdBottomButton.setTitle(answer3b, for: .normal)
        }
        else if storyIndex == 1 && sender.tag == 2 {
            storyIndex = 2
            thirdStoryTextView.text = story2
            thirdTopButton.setTitle(answer2a, for: .normal)
            thirdBottomButton.setTitle(answer2b, for: .normal)
        }
        else if storyIndex == 2 && sender.tag == 2 {
            storyIndex = 4
            thirdStoryTextView.text = story4
            thirdTopButton.isHidden = true
            thirdBottomButton.isHidden = true
        }
        else if storyIndex == 3 && sender.tag == 1 {
            storyIndex = 6
            thirdStoryTextView.text = story6
            thirdTopButton.isHidden = true
            thirdBottomButton.isHidden = true
        }
        else if storyIndex == 3 && sender.tag == 2 {
            storyIndex = 5
            thirdStoryTextView.text = story5
            thirdTopButton.isHidden = true
            thirdBottomButton.isHidden = true
        }
        if (thirdStoryTextView.text == story4 || thirdStoryTextView.text == story5 || thirdStoryTextView.text == story6) {
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
        thirdStoryTextView.text = story1
        thirdTopButton.isHidden = false
        thirdBottomButton.isHidden = false
        thirdTopButton.setTitle(answer1a, for: .normal)
        thirdBottomButton.setTitle(answer1b, for: .normal)
    }

}
