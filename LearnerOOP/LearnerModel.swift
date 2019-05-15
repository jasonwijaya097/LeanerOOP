//
//  LearnerModel.swift
//  LearnerOOP
//
//  Created by Jason Valencius Wijaya on 15/05/19.
//  Copyright © 2019 Jason Valencius Wijaya. All rights reserved.
//

import Foundation

class LearnerModel {
    var name: String
    var age: Int
    var gender: String
    var imageProfile: String
    
    init(nameLearner: String, ageLeaner: Int, genderLearner: String, imageProfileLearner: String) {
        self.name = nameLearner
        self.age = ageLeaner
        self.gender = genderLearner
        self.imageProfile = imageProfileLearner
    }
    
    func increaseAge(){
        self.age += 1
    }
    
}



