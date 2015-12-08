//
//  SaveIdeaUsecaseFactory.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 06/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

class SaveIdeaUsecaseFactory {
    var gateway: IdeaGatewayProtocol!
    
    init() {
        self.gateway = IdeaGatewayRealm()
    }
    
    func make() -> SaveIdeaUsecase {
        return SaveIdeaUsecase(gateway: self.gateway)
    }
}