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
    var facilInstance: FacilitatorModel? // Create copy of FacilitatorModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        learnerInstance = LearnerModel(nameLearner: "Jason", ageLeaner: 22, genderLearner: "Male", imageProfileLearner: "")
        facilInstance = FacilitatorModel(facilName: "David", facilAge: 24, facilGender: "Male", facilImage: "", facilPerk: "Unlimited Starbuck on Friday")
        
        updateUI()
    }
    
    func updateUI(){
        
        if let instance = facilInstance{
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
        
    }

    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        if let instance = facilInstance{
            instance.increaseAge()
            instance.coachMentee()
            updateUI()
        }
        
    }
    
    
    
    
    
}

