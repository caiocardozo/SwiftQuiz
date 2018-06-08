//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Caio Cardozo on 02/06/18.
//  Copyright © 2018 Caio Cardozo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lsAnswered: UILabel!
    @IBOutlet weak var lbCorrected: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswer: Int = 0
    var totalAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lsAnswered.text = "Perguntas respondidas: \(totalAnswer)"
        lbCorrected.text = "Perguntas corretas: \(totalCorrectAnswer)"
        lbWrong.text = "Perguntas erradas: \(totalAnswer - totalCorrectAnswer)"
        
        let score = totalCorrectAnswer*100/totalAnswer
        lbScore.text = "\(score)%"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    

}
