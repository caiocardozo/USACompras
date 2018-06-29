//
//  SettingsViewController.swift
//  USACompras
//
//  Created by Caio Cardozo on 26/06/18.
//  Copyright © 2018 Caio Cardozo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIos: UITextField!
    @IBOutlet weak var tfStateTaxes: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfIos.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        tfStateTaxes.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }

    
    func setValues() {
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfIos.text!)
        tc.stateTax = tc.convertToDouble(tfStateTaxes.text!)
    }
}


extension SettingsViewController : UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
