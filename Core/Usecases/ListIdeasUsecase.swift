//
//  ListIdeasUsecase.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 06/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

class ListIdeasUsecase {
    var gateway: IdeaGatewayProtocol
    var presenter: ListIdeasPresenterProtocol
    
    init(gateway: IdeaGatewayProtocol, presenter: ListIdeasPresenterProtocol) {
        self.gateway = gateway
        self.presenter = presenter
    }
    
    func run() {
    }
}
