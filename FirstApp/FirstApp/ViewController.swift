//
//  ViewController.swift
//  FirstApp
//
//  Created by Aluno Mack on 15/04/19.
//  Copyright © 2019 MaatheusGois.Academy.Storubord.FirstApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    
    var pickerSelected:String!
    var pickerData: [String] = [String]()
    
    @IBOutlet weak var pesoIdeal: UILabel!
    @IBOutlet weak var altura: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    
    @IBAction func calcular(_ sender: Any) {
        let alturaF:Float = (altura.text! as NSString).floatValue
        let sexoF:String = (pickerSelected! as String)
        print(sexoF)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Connect data:
        pickerData = ["Masculino", "Feminino"]

        self.picker.delegate = self
        self.picker.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerSelected = pickerData[row]
//        print(pickerData[row])
    }
    
}



