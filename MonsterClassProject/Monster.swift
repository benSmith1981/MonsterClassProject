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
    
    //Property Observers
    // - This observes the value of a property
    // - Can get a notificaiton just before willSet
    // - Can get a notification jsut after it is set with didSet
    var allCrunchedBones: [Bone] = [] {
        didSet {
            print("I ate some more crunched bones")
        }
        willSet {
            print("I am just about to eat some more bones!")
        }
    }
    
    //Computed Property
    //- This is a get only property
    //- Can be recalculated, unlike a lazy variable
    var weight: Double {
        get {
            return Double(self.allCrunchedBones.count) * Bone.weight
        }
        
        set(weight) {
            if weight <= 1 {
                print("Oh no i need to eat I might die")
            }
            //do something in here when you set the computed property
        }
        
    }

    //Lazy Variable
    //- Calculated only once
    //- Used with expensive calculations
    //- Not useful for weight
    lazy var diet: String = {
        //Lots of complicated processing of monsters mood...
        return "Humans of course"
    }()
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
    
    func eatHuman(human: Human) -> [Bone] {
        crunchBones(bones: human.bones)
        return allCrunchedBones
    }
    
    func eatManyHumans(humans: [Human]) -> [Bone] {
        for human in humans {
            crunchBones(bones: human.bones)
        }
        return allCrunchedBones
    }
    
    func crunchBones(bones: [Bone]) {
        for currentBone in bones {
            crunchBone(bone: currentBone)
        }
    }
    
    func crunchBone(bone: Bone) {
//        bone.crunchTheBone(crunched: true)
        bone.crunchTheBone(crunched: true)
        allCrunchedBones.append(bone)

        switch bone.type {
        case .boyBone:
            print("I am eating boy bones")
        case .manBone:
            print("I am eating man bones")
        case .womanBone:
            print("I am eating woman bones")
        }
    }
    
//    func crunchBone(bone: Bone) {
//        switch bone.type {
//        case .boy:
//            print("I am eating boy bones")
//            bone.crunched = .crunched
//        case .man:
//            print("I am eating man bones")
//            bone.crunched = .crunched
//        case .woman:
//            print("I am eating woman bones")
//            bone.crunched = .crunched
//        }
//        allCrunchedBones.append(bone)
//    }
    
}
