//
//  QuizViewController.swift
//  Swift_Project
//
//  Created by SWU mac on 2020/05/04.
//  Copyright © 2020 SWU mac. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet var quizLabel: UILabel!
    @IBOutlet var false_button: UIButton!
    @IBOutlet var true_button: UIButton!
    @IBOutlet var end_Button : UIButton!
//    @IBOutlet var nameLabel : UILabel!
    
    var info: String?
    
    let quizArray : Array<String> = ["Q1. 성평등을 목적으로 하는 운동의 올바른 명칭은 '이퀄리즘'이다.", "Q2. 트렌스젠더는 성전환 수술을 받은 사람을 말한다", "Q3. 좋아하는 여성을 대상으로 한 불법촬영과 성희롱과 같은 범죄는 '여성혐오' 범주에 들 수 없다"]
    var count:Int = 0
    var score:Int = 0
    
    @IBAction func seelectOX(_ sender: UIButton) {
        if (count == 0 && sender == false_button) || (count == 1 && sender == false_button)
        {
            score += 10
            //nameLabel.isHidden = true
        }
        else{
            //nameLabel.isHidden = true
            
        }
        if count == 2 && sender == false_button{
            score += 10
            quizLabel.text = "모든 퀴즈가 끝났습니다! 결과를 확인해보시겠습니까?"
            false_button.isHidden = true
            true_button.isHidden = true
            end_Button.isHidden = false
        }
        count += 1
        if count<=2{
            quizLabel.text = quizArray[count]
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        if let contentString = info {
//            nameLabel.text = contentString
//        }
        end_Button.isHidden = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "resultView"{
            let destVC = segue.destination as! ResultViewController
            
            destVC.res = score
        }
    }
}
