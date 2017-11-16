//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Yaoxuan Luan on 11/15/17.
//  Copyright © 2017 Yaoxuan Luan. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    //Initial the first color Red
    let ColorIni = 0
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var ColorPickView: UIPickerView!
    
    let colors: [(UIColor, String)] = [(.red, "Red"), (.orange, "Orange"), (.yellow, "Yellow"), (.green, "Green"), (.blue, "Blue"), (.purple, "Purple")]
    
    //Number of picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Shows Piker Choices
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].1
    }
    
    //Shows number of Choices
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    //Change label text and background color
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row].1
        self.view.backgroundColor = colors[row].0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initial the background color and label text
        label.text = colors[ColorIni].1
        self.view.backgroundColor = colors[ColorIni].0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
