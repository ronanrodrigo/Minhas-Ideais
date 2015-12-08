//
//  IdeaStruct.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 05/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

enum IdeaStructValidationError : ErrorType {
    case TitleIsEmpty
    
    func description() -> String {
        switch self {
        case .TitleIsEmpty:
            return "Title is empty"
        }
    }
}

struct IdeaStruct {
    var id: Int?
    var title: String?
    var briefing: String?
    var category: CategoriesEnum?
    
    init() { }
    
    init(title: String, briefing: String, category: CategoriesEnum) {
        self.title = title
        self.briefing = briefing
        self.category = category
    }
    
    init(id: Int?, title: String?, briefing: String?, category: CategoriesEnum?) {
        self.id = id
        self.title = title
        self.briefing = briefing
        self.category = category
    }
    
    func isValid() throws -> Bool {
        if title == nil {
            throw IdeaStructValidationError.TitleIsEmpty
        }
        return true
    }
}