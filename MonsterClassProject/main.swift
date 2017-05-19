//
//  main.swift
//  MonsterClassProject
//
//  Created by Ben Smith on 22/02/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import Foundation

var boyBones: [Bone] = []

for loopCounter in 1...10 {
    var bone = Bone.init(type: .boyBone, crunched: false)
    boyBones.append(bone)
}

print(boyBones.count)

var theBoy = Boy.init(name: "Ben", type: humanType.boy, bones: boyBones)

