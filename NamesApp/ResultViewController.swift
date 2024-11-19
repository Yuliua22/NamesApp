//
//  ResultViewController.swift
//  NamesApp
//
//  Created by Юлия Прокопьева on 11/14/24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var goBackButton: UIButton!
    
    @IBOutlet weak var namesLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    var firstName : String!
    var secondName : String!
    
    private var resultValue : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        namesLabel.text = "\(firstName ?? "") and \(secondName ?? "")"
        resultValue = findResult()
        resultLabel.text = resultValue.formatted(.percent)
        progressView.progress = Float(resultValue)/100
        progressView.transform = progressView.transform.scaledBy(x: 1, y: 4)
    }
    
    private func findResult()->Int{
        return Int.random(in: 1...100)
    }
}
