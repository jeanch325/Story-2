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
    let story1 : String = "s1"
    let answer1a : String = "1a1"
    let answer1b : String = "1a2"
    
    let story2 : String = "s2"
    let answer2a : String = "2a1"
    let answer2b : String = "2a2"
    
    let story3 : String = "s3"
    let answer3a : String = "3a1"
    let answer3b : String = "3a2"
    
    let story4 : String = "s4"
    
    let story5 : String = "s5"
    
    let story6 : String = "s5"
    
    @IBOutlet weak var thirdStoryTextView: UITextView!
    @IBOutlet weak var thirdTopButton: UIButton!
    @IBOutlet weak var thirdBottomButton: UIButton!
    
    
    var storyIndex : Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        restart()
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
        let alert = UIAlertController(title: "End of Story", message: nil, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Reset", style: .default) {
            (action) -> Void in self.restart()
        }
        
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
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
