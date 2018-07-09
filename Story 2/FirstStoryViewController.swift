//
//  FirstStoryViewController.swift
//  Story 2
//
//  Created by Jean Cho on 7/5/18.
//  Copyright © 2018 Jean Cho. All rights reserved.
//

import UIKit

class FirstStoryViewController: UIViewController {
    
    //Name
    var name = ""
    
    
    //stories
    
    let story1 : String = "You're walking home at night after your car broke down after a quick Taco Bell run. You don't know quite where you are and your phone is on 5%. You're using the last of your battery to find your way to the nearest public area. Suddenly, a white van drives up behind you. The man in the driver's seat lowers the window and yells at you to get in. You look and see that he has a knife in his left hand. Do you:"
    let answer1a : String = "Get in the car."
    let answer1b : String = "Try to sprint away."
    
    let story2 : String = "The man runs out of the car and catches up to you. He drags you back to his car and begins driving. You can tell by his expression that he is angry that you didn't comply the first time."
    let answer2a : String = "You sit quietly to get on his good side."
    let answer2b : String = "You grab his knife and stab him."
    
    let story3 : String = "After a minute of silence, you glance behind you in the backseat of the car and see a limp arm hanging out from behind the seat. He notices this and then tells you that he picked you up to help him dispose of the body. Once you get to the location - a field - , he gets out of the car and carries the body and a shovel to an empty plot of grass."
    let answer3a : String = "While he holds the body, you run for your life."
    let answer3b : String = "Scared, you help him dig the hole."
    
    let story4 : String = "Did you forget that he was the one driving? The car, now with no one behind the wheel, swerves violently and crashes into a big oak tree. The car explodes and you die."
    
    let story5 : String = "Once you finish burying the body, he hits you over the head with the shovel. You die."
    
    let story6 : String = "Burdened by the weight of both the body and the shovel, he is unable to catch you. You make it out alive and never hear of the man and the body again."
    
    @IBOutlet weak var firstStoryTextView: UITextView!
    @IBOutlet weak var firstTopButton: UIButton!
    @IBOutlet weak var firstBottomButton: UIButton!
    @IBOutlet weak var firstStoryTitle: UILabel!
    
    //Specifies the story
    var storyIndex : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restart()
        firstStoryTitle.text = "\(name.capitalized)'s Dark Night"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //The story path
    @IBAction func buttonPressed(_ sender: UIButton) {
        if (storyIndex == 1 || storyIndex == 2) && sender.tag == 1 {  //if it is on story 1 or 2 and user presses top button
            storyIndex = 3
            firstStoryTextView.text = story3
            firstTopButton.setTitle(answer3a, for: .normal)
            firstBottomButton.setTitle(answer3b, for: .normal)
        }
        else if storyIndex == 1 && sender.tag == 2 {
            storyIndex = 2
            firstStoryTextView.text = story2
            firstTopButton.setTitle(answer2a, for: .normal)
            firstBottomButton.setTitle(answer2b, for: .normal)
        }
        else if storyIndex == 2 && sender.tag == 2 {
            storyIndex = 4
            firstStoryTextView.text = story4
            firstTopButton.isHidden = true
            firstBottomButton.isHidden = true
        }
        else if storyIndex == 3 && sender.tag == 1 {
            storyIndex = 6
            firstStoryTextView.text = story6
            firstTopButton.isHidden = true
            firstBottomButton.isHidden = true
        }
        else if storyIndex == 3 && sender.tag == 2 {
            storyIndex = 5
            firstStoryTextView.text = story5
            firstTopButton.isHidden = true
            firstBottomButton.isHidden = true
        }
        if (firstStoryTextView.text == story4 || firstStoryTextView.text == story5 || firstStoryTextView.text == story6) {
            restartAlert()
        }
    }
    
    func restartAlert () {
        //the time delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            let alert = UIAlertController(title: "End of Story", message: nil, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Reset", style: .default) {
                (action) -> Void in self.restart()
            }
            
            alert.addAction(alertAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func restart () {
        storyIndex = 1
        firstStoryTextView.text = story1
        firstTopButton.isHidden = false
        firstBottomButton.isHidden = false
        firstTopButton.setTitle(answer1a, for: .normal)
        firstBottomButton.setTitle(answer1b, for: .normal)
    }
    
}























