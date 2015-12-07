//
//  SaveIdeaUsecase.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 05/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

class SaveIdeaUsecase {
    
    var gateway: IdeaGatewayProtocol
    
    init(gateway: IdeaGatewayProtocol) {
        self.gateway = gateway
    }
    
    func run(idea: IdeaStruct) {
        do {
            if try idea.isValid() {
                self.gateway.saveIdea(idea)
            }
        } catch let error as IdeaStructValidationError {
            print(error.description())
        } catch {
            print("Default")
        }
    }
    
}