//
//  Human.swift
//  MonsterClassProject
//
//  Created by Ben Smith on 22/02/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import Foundation

class Human {
    static let whereDoTheyLive: String = "On Earth and Mars and Space"

    let name: String
    var type: humanType
    var bones: [Bone]
    
    init(name: String, type: humanType, bones: [Bone]) {
        self.name = name
        self.type = type
        self.bones = bones
    }
    
    final func talk(word: String) {
        //just say the words
        print(word)
    }
}
