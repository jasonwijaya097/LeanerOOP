//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Jason Valencius Wijaya on 15/05/19.
//  Copyright © 2019 Jason Valencius Wijaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!
    
    @IBOutlet weak var learnerAgeButton: UIButton!
    
    //Learner Instance
    var learnerInstance: LearnerModel? // You just create copy of your LearnerModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        learnerInstance = LearnerModel(nameLearner: "Jason", ageLeaner: 22, genderLearner: "Male", imageProfileLearner: "")
        
        updateUI()
    }
    
    func updateUI(){
        
        if let instance = learnerInstance{
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
    
    }

    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        if let instance = learnerInstance{
            instance.increaseAge()
            updateUI()
        }
        
    }
    
    
    
}

