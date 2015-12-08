//
//  Minhas_IdeiasTests.swift
//  MyIdeasTests
//
//  Created by Ronan Rodrigo Nunes on 05/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import XCTest

@testable import MyIdeas

class SaveIdeaUsecaseTests: XCTestCase {
    
    var gateway: IdeaGatewayFake!
    var usecase: SaveIdeaUsecase!
    
    override func setUp() {
        super.setUp()
        
        self.gateway = IdeaGatewayFake()
        self.usecase = SaveIdeaUsecase(gateway: self.gateway)
    }
    
    func testShouldCreateAnIdea() {
        let idea: IdeaStruct = IdeaStruct(title: "Title", explanation: "Description", category: .Health)
        
        self.usecase.run(idea)
        
        XCTAssertNotNil(self.gateway.savedIdea.id)
    }
    
    func testShouldUpdateAnIdea() {
        var idea: IdeaStruct = IdeaStruct(id: 1, title: "Title", explanation: "Description", category: .Health)
        self.gateway.saveIdea(idea)
        idea.title = "New Title"
        
        self.usecase.run(idea)
        
        XCTAssertEqual(idea.id, self.gateway.savedIdea.id)
        XCTAssertEqual("New Title", self.gateway.savedIdea.title)
    }
    
    func testShouldNotSaveWithoutTitle(){
        var idea: IdeaStruct = IdeaStruct()
        idea.explanation = "Description"
        
        self.usecase.run(idea)
        
        XCTAssertNil(self.gateway.savedIdea)
    }
    
}
