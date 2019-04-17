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
    @IBOutlet weak var resultado: UILabel!
    
    
    @IBAction func calcular(_ sender: Any) {
        let alturaF:Float = (altura.text! as NSString).floatValue
        let sexoF:String = (pickerSelected! as String)
        calculo(alturaF, sexoF)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        pickerData = ["Masculino", "Feminino"]
        
        self.picker.delegate = self
        self.picker.dataSource = self
    }
    
    func calculo(_ altura:Float, _ sexo: String){
        resultado.text = "Seu peso ideal é FUNFOU"
    }
    
    
    
    
    // PICKER VIEW
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerSelected = pickerData[row]
    }
    
}



