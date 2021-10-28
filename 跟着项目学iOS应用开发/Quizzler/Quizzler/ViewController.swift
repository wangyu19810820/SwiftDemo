//
//  ViewController.swift
//  Quizzler
//
//  Created by wang yu on 2021/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    func nextQuestion() {
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            scoreLabel.text = "分数：\(score)"
            progressView.progress = (1.0 / 13.0) * Float(questionNumber)
            let alert = UIAlertController(title: "了不起！",
                                          message: "你已完成了所有的题目，是否想重新开始呢？",
                                          preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "重新开始", style: .default, handler: { _ in self.startOver() })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func startOver() {
        questionNumber = 0
        nextQuestion()
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("正确")
            score += 1
        } else {
            ProgressHUD.showError("错误")
        }
    }
    
    func updateUI() {
        scoreLabel.text = "分数：\(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        progressView.progress = (1.0 / 13.0) * Float(questionNumber)
    }
}

