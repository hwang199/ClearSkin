//
//  NewsData.swift
//  ClearSkinProject
//
//  Created by Michelle Li on 2/15/24.
//

import Foundation

struct SkinStuff: Identifiable {
    
    let name: String
    let imageName: String
    let description: String
    let id = UUID()
    
    static func examples() -> [SkinStuff] {
        [SkinStuff(name: "Murad",
                   imageName: "murad",
                   description: "Murad Targeted Pore Corrector"),
         SkinStuff(name: "Good Molecules",
                   imageName: "discoloration",
                   description: "Discoloration Correcting Serum"),
         SkinStuff(name: "Curology",
                   imageName: "curology",
                   description: "Curology Gentle Cleanser")
        ]
        
    }
    
    static func example1() -> SkinStuff {
        SkinStuff(name:  "Murad",
                  imageName: "murad",
                  description: "Murad Targeted Pore Corrector")
    }
}

struct MedicalNews: Identifiable {
    let name: String
    let imageName: String
    let description: String
    let id = UUID()
    
    static func examples() -> [MedicalNews] {
        [MedicalNews(name: "Medical News Today",
                     imageName: "skincare",
                     description: "When should a person with acne see a dermatologist?"),
         MedicalNews(name: "Medical News Today",
                     imageName: "lotion",
                     description: "Is hormonal acne worse in winter?")
        ]
    }
    
    
    static func example2() -> MedicalNews {
        MedicalNews(name: "Medical News Today",
                    imageName: "skincare",
                    description: "When should a person with acne see a dermatologist?")
    }
    
}

struct Collection: Identifiable {
    let name: String
    let imageName: String
    let description: String
    let id = UUID()
    
    static func examples() -> [Collection] {
        [Collection(name: "CV Skinlabs",
                     imageName: "cvskinlabs",
                     description: "02/20/2024"),
         Collection(name: "New Beauty",
                     imageName: "newbeauty",
                     description: "02/16/2024"),
         Collection(name: "MedEsthetics",
                     imageName: "medesth",
                     description: "02/17/2024")
        ]
    }
    
    
    static func example3() -> Collection {
        Collection(name: "MedEsthetics",
                    imageName: "medesth",
                    description: "02/17/2024")
    }
    
}
    
