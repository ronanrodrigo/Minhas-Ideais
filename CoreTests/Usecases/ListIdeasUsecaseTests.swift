//
//  ListIdeasUsecaseTests.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 06/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import XCTest

class ListIdeasUsecaseTests: XCTestCase {
    
    var gateway: IdeaGatewayFake!
    var usecase: ListIdeasUsecase!
    
    override func setUp() {
        super.setUp()
        
        self.gateway = IdeaGatewayFake()
        self.usecase = ListIdeasUsecase(gateway: self.gateway)
    }
    
    func testShouldReturnAListOfCreatedIdeas() {
        let idea = IdeaStruct(title: "Title", explanation: "Description", category: .Health)
        self.gateway.saveIdea(idea)
        
        let ideasList = self.usecase.run()
        
        XCTAssertEqual(ideasList.first?.id, self.gateway.savedIdea.id)
    }
    
}