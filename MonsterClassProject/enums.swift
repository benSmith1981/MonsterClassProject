//
//  enums.swift
//  MonsterClassProject
//
//  Created by Ben Smith on 22/02/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import Foundation

enum boneType {
    case boyBone
    case manBone
    case womanBone
}

//enum boneEnum {
//    case crunched
//    case notCrunched
//    
//    mutating func crunchBone() {
//        self = .crunched
//    }
//    
//    func returnBonesForHuman(type: humanType) -> [Bone] {
//        var bones: [Bone] = []
//        
//        for _ in 1...10 {
//            bones.append(Bone.init(type: .type, crunched: self))
//        }
//        
//        return bones
//    }
//}


enum humanType {
    case boy
    case man
    case woman
}

enum teethType {
    case sharpTeeth
    case softTeeth
    case noTeeth
}
