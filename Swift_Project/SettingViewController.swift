//
//  SettingViewController.swift
//  Swift_Project
//
//  Created by SWU mac on 2020/05/04.
//  Copyright © 2020 SWU mac. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBOutlet var inputName: UITextField!
    @IBOutlet var pickerSex: UIPickerView!
    let sexArray: Array<String> = ["남성", "여성"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
//        if segue.identifier == "QuizView"{
//            let destVC = segue.destination as! QuizViewController
//
//            let nameValue: String! = inputName.text!
//
//            var outString: String = "반갑습니다"
//
//            outString += nameValue
//            outString += "님!"
//            destVC.info = outString
//        }
//    }
      func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
      }
      
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
              return sexArray.count
      }
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
              return sexArray[row]
    }
}
