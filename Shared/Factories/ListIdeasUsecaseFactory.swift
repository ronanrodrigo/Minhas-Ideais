//
//  ListIdeasUsecaseFactory.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 06/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

class ListIdeasUsecaseFactory {
    var gateway: IdeaGatewayProtocol!
    
    init() {
        self.gateway = IdeaGatewayFake()
    }
    
    func make() -> ListIdeasUsecase {
        return ListIdeasUsecase(gateway: self.gateway)
    }
}