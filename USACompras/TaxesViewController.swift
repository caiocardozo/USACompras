//
//  TaxesViewController.swift
//  USACompras
//
//  Created by Caio Cardozo on 26/06/18.
//  Copyright © 2018 Caio Cardozo. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {

    @IBOutlet weak var lbDolar: UILabel!
    @IBOutlet weak var lbStateTaxes: UILabel!
    @IBOutlet weak var lbIof: UILabel!
    @IBOutlet weak var lbStateTaxesDescription: UILabel!
    @IBOutlet weak var lbIofDescription: UILabel!
    @IBOutlet weak var swCreditCard: UISwitch!
    @IBOutlet weak var lbReal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        calculateTaxes()
    }
    
    @IBAction func changeIof(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    
    func calculateTaxes() {
        lbStateTaxesDescription.text = "Imposto do estado (\(tc.getFormattedValue(of: tc.stateTax, withCurrency: ""))%)"
        lbIofDescription.text = "IOF (\(tc.getFormattedValue(of: tc.iof, withCurrency: ""))%)"
        
        lbDolar.text = tc.getFormattedValue(of: tc.shoppingValue , withCurrency: "US$ ")
        lbStateTaxes.text = tc.getFormattedValue(of: tc.stateTaxValue , withCurrency: "US$ ")
        lbIof.text = tc.getFormattedValue(of: tc.iosValue, withCurrency: "US$ ")
        
        let real = tc.calculate(usingCreditCard: swCreditCard.isOn)
        lbReal.text = tc.getFormattedValue(of: real, withCurrency: "R$ ")
    }
    

   

}
