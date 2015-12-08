//
//  IdeaGatewayRealm.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 12/8/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

class IdeaGatewayRealm: IdeaGatewayProtocol {
    
    func saveIdea(idea: IdeaStruct) -> IdeaStruct {
        return idea
    }
    
    func listIdeas() -> [IdeaStruct] {
        return [IdeaStruct()]
    }

}