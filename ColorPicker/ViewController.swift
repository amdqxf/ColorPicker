//
//  ViewController.swift
//  ColorPicker
//
//  Created by Allison Dolan on 10/2/18.
//  Copyright © 2018 Allison Dolan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    struct Color {
        var name: String
        var background: UIColor
        
    }
    
    let colors: [Color] = [Color(name: "Red", background: UIColor.red), Color(name: "Orange", background: UIColor.orange), Color(name: "Yellow", background: UIColor.yellow), Color(name: "Green", background: UIColor.green), Color(name: "Blue", background: UIColor.blue), Color(name: "Purple", background: UIColor.purple) ]

    var num: Int = 0
    
    @IBOutlet weak var colorPicker: UIPickerView!
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        
        pickerView(colorPicker, didSelectRow: num, inComponent: 1)
            self.view.backgroundColor = colors[num].background
            colorLabel.text = colors[num].name
       
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(row == 0){
            self.view.backgroundColor = colors[0].background
            colorLabel.text = colors[0].name
        } else if(row == 1){
            self.view.backgroundColor = colors[1].background
            colorLabel.text = colors[1].name
        } else if(row == 2){
            self.view.backgroundColor = colors[2].background
            colorLabel.text = colors[2].name
        } else if(row == 3){
            self.view.backgroundColor = colors[3].background
            colorLabel.text = colors[3].name
        } else if(row == 4){
            self.view.backgroundColor = colors[4].background
            colorLabel.text = colors[4].name
        } else if(row == 5){
            self.view.backgroundColor = colors[5].background
            colorLabel.text = colors[5].name
        }
    }
}

