//
//  IdeaGatewayFake.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 06/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

class IdeaGatewayFake: IdeaGatewayProtocol {
    var savedIdea: IdeaStruct!
    var id: Int = 0
    var ideas: [IdeaStruct] = [IdeaStruct]()
    
    func saveIdea(idea: IdeaStruct) -> IdeaStruct {
        savedIdea = idea
        incrementId()
        ideas.append(savedIdea)
        return savedIdea
    }
    
    func listIdeas() -> [IdeaStruct] {
        return ideas
    }
    
    func incrementId() {
        if savedIdea.id == nil {
            savedIdea.id = ++id
        }
    }
}