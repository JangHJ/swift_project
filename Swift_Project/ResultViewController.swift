//
//  ResultViewController.swift
//  Swift_Project
//
//  Created by SWU mac on 2020/05/04.
//  Copyright © 2020 SWU mac. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var resultLabel : UILabel!
    @IBOutlet var resImage : UIImageView!
    var info2: String?
    var res:Int!
    
    var imageFileName = ["1.png", "2.png", "3.png"]
    @IBAction func finalButton(_ sender: UIButton){
        resImage.isHidden = false
        if res >= 30
        {
            resImage.image = UIImage(named:imageFileName[0])
            resultLabel.text = "정확히 알고 계시는군요!"
        }
        else if res >= 20
        {
           resImage.image = UIImage(named:imageFileName[1])
            resultLabel.text = "하나 틀렸네요 너무 아쉽습니다"
        }
        else
        {
            resImage.image = UIImage(named:imageFileName[2])
            resultLabel.text = "아직 잘 모르고 계시는군요"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contentString = info2 {
            resultLabel.text = contentString
                             }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
