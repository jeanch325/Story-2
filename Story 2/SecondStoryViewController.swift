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
    
    let story6 : String = "s6"

    
    @IBOutlet weak var secondStoryTextView: UITextView!
    @IBOutlet weak var secondTopButton: UIButton!
    @IBOutlet weak var secondBottomButton: UIButton!
    
    
    var storyIndex : Int = 1

    override func viewDidLoad() {
        restart()
        super.viewDidLoad()
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
