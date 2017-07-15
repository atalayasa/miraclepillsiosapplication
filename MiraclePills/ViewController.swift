//
//  ViewController.swift
//  MiraclePills
//
//  Created by Atalay Aşa on 14/07/2017.
//  Copyright © 2017 AtalayAsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var chooseBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var okBtn: UIButton!
    
    @IBOutlet weak var statePicker: UIPickerView!
    let states = ["Ankara","İstanbul","Adana","İzmir","Antalya","Manisa","Van","Şanlıurfa"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClicked(_ sender: AnyObject) {
        statePicker.isHidden = false
        cancelBtn.isHidden = false
        okBtn.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    @IBAction func okBtnPressed(_ sender: AnyObject) {
        okBtn.isHidden = true
        cancelBtn.isHidden = true
        statePicker.isHidden = true
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chooseBtn.setTitle(states[row], for: .normal)
    }
    
    @IBAction func cancelBtnPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = true
        okBtn.isHidden = true
        cancelBtn.isHidden = true
        
    }
}

