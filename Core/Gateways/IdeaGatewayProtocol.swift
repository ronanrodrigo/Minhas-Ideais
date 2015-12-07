//
//  IIdeaGateway.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 05/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

protocol IdeaGatewayProtocol {
    func saveIdea(idea: IdeaStruct) -> IdeaStruct
    func listIdeas() -> [IdeaStruct]
}