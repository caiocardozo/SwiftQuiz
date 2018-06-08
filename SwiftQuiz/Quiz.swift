//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Caio Cardozo on 02/06/18.
//  Copyright © 2018 Caio Cardozo. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    // o _ omite o nome do parametro fora da funcao.
    func validadeOptions(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctedAnswer
    }
    
    deinit {
        print("liberou o quiz da memoria")
    }
}
