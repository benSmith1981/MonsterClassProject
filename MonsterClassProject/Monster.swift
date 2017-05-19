//
//  Monster.swift
//  MonsterClassProject
//
//  Created by Ben Smith on 22/02/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

//Monster.swift
import Foundation

class Monster{
    var age: Int
    var name: String
    var bonesEaten: [Bone] = []
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
    
    func eatHuman(human: Human) -> [Bone] {
        crunchBones(bones: human.bones)
        return bonesEaten
    }
    
    func eatManyHumans(humans: [Human]) -> [Bone] {
        for human in humans {
            crunchBones(bones: human.bones)
        }
        return bonesEaten
    }
    
    func crunchBones(bones: [Bone]) {
        for currentBone in bones {
            crunchBone(bone: currentBone)
        }
    }
    
    func crunchBone(bone: Bone) {
        switch bone.type {
        case .boyBone:
            print("I am eating boy bones")
            bone.crunched = true
        case .manBone:
            print("I am eating man bones")
            bone.crunched = true
        case .womanBone:
            print("I am eating woman bones")
            bone.crunched = true
        }
        bonesEaten.append(bone)
    }
    
}
