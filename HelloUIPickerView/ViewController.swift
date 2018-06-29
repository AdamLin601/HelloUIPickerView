//
//  ViewController.swift
//  HelloUIPickerView
//
//  Created by 林奕德 on 2018/3/24.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    let numberArray =  ["1","2","3","4","5","6","7","8"]
    let fruitArray = ["apple","banana","mango","watermelon"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // how many components in picker View
        return 2 //兩類選項
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // how many row in component  該類有幾項
        if component == 0{ //第0項
            return numberArray.count //項
        }else{    //其他 （第一項）
                return fruitArray.count //項
            }
        }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { //項目內容
        if component == 0{
            return numberArray[row]
        }else{
            return fruitArray[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {   //chose done and action
        if component == 0{ //component選項 
            print("number:\(numberArray[row])")
        }else{
            print("fruit:\(fruitArray[row])")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View: did load")
        
    }
    override func viewWillAppear(_ animated: Bool) {
     super.viewWillAppear(animated)
        print("View: will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View: did appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View : will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View : did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

