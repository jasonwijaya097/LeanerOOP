//
//  FacilitatorModel.swift
//  LearnerOOP
//
//  Created by Jason Valencius Wijaya on 15/05/19.
//  Copyright © 2019 Jason Valencius Wijaya. All rights reserved.
//

import Foundation

class FacilitatorModel: LearnerModel{
    var perk: String
    
    init(facilName: String, facilAge: Int, facilGender: String, facilImage: String, facilPerk: String) {
        self.perk = facilPerk
        
        super.init(nameLearner: facilName, ageLeaner: facilAge, genderLearner: facilGender, imageProfileLearner: facilImage)
        
    }
    
    func coachMentee(){
        print("Coaching Mentee")
    }
}
