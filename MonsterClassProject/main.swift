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

//print(boyBones.count)
//
var theBoy = Boy.init(name: "Ben", type: humanType.boy, bones: boyBones)

var manBones: [Bone] = []

for loopCounter in 1...10 {
    var bone = Bone.init(type: .manBone, crunched: false)
    manBones.append(bone)
}
var theMan = Man.init(name: "Ben", type: humanType.boy, bones: manBones)

//var boyBones: boneEnum = .notCrunched
//var theBoy = Boy.init(name: "Ben", type: humanType.boy, bones: boyBones.returnBonesForHuman(type: .boy))

print(Human.whereDoTheyLive)
print(Boy.whereDoTheyLive)

var monster1 = Monster.init(age: 1000, name: "Bone pod")

var bonesEaten = monster1.eatHuman(human: theBoy)
print(bonesEaten.count)
monster1.weight = 1
print("Monster weight \(monster1.weight)")
print()
print(monster1.eatHuman(human: theMan).count)
print("Monster weight \(monster1.weight)")


