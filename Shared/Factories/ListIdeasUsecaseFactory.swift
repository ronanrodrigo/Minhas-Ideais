//
//  ListIdeasUsecaseFactory.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 06/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation
import UIKit

class ListIdeasUsecaseFactory {
    var gateway: IdeaGatewayProtocol
    var presenter: ListIdeasPresenterProtocol
    
    init() {
        self.gateway = IdeaGatewayRealm()
        self.presenter = ListIdeasPresenter()
    }
    
    func make() -> ListIdeasUsecase {
        return ListIdeasUsecase(gateway: self.gateway, presenter: self.presenter)
    }
}