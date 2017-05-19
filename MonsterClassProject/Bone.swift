//
//  Bone.swift
//  MonsterClassProject
//
//  Created by Ben Smith on 22/02/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import Foundation

class Bone {
    static let weight = 10.0
    var type: boneType
    var crunched: Bool
    
    init(type: boneType, crunched: Bool) {
        self.type = type
        self.crunched = crunched
    }
    
    func crunchTheBone(crunched: Bool) {
        self.crunched = crunched
    }
}


//class Bone {
//    var type: humanType
//    var crunched: boneEnum
//    
//    init(type: humanType, crunched: boneEnum) {
//        self.type = type
//        self.crunched = crunched
//    }
//}
