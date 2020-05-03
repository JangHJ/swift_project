//
//  SettingController.swift
//  PJ01
//
//  Created by SWU mac on 2020/05/03.
//  Copyright © 2020 SWU mac. All rights reserved.
//

import UIKit

class SettingController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
       return true }

    @IBOutlet var inputName: UITextField!
    @IBOutlet var pickerSex: UIPickerView!
    let ageArray: Array<String> = ["남성", "여성"]
    var sex: String! = ""
    var count: Int = 0
    var name:String! = ""
    @IBOutlet var resultLabel: UILabel!
    
    
    @IBAction func doneButton(_ sender: UIButton) {
        name = inputName.text
        
        let index = pickerSex.selectedRow(inComponent: 0)
        if index == 0{
            sex = "male"
        }
        else{
            sex = "female"
        }
    }
   
      @IBAction func Quiz_true(_ sender: UIButton) {
        self.count += 1
      }
      @IBAction func Quiz1_false(_ sender: UIButton) {
          return
      }
    
    @IBAction func result(_ sender: UIButton) {
        let res : String! = name
        if count == 3{
            resultLabel.text = res
        }
        else if count == 2{
            resultLabel.text = "님, 조금만 더 분발하세요!"
        }
        else{
            resultLabel.text = res
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return ageArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return ageArray[row]
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
