//
//  Bone.swift
//  MonsterClassProject
//
//  Created by Ben Smith on 22/02/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import Foundation

class Bone {
    var type: boneType
    var crunched: Bool
    
    init(type: boneType, crunched: Bool) {
        self.type = type
        self.crunched = crunched
    }
}
