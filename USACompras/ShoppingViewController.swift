//
//  ViewController.swift
//  USACompras
//
//  Created by Caio Cardozo on 26/06/18.
//  Copyright © 2018 Caio Cardozo. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var lblRealDescription: UILabel!
    
    @IBOutlet weak var lbReal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmmount()
    }
    
    func setAmmount(){
        tc.shoppingValue = tc.convertToDouble(tfDolar.text!)
        lbReal.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurrency: "")
        let dolar =  tc.getFormattedValue(of: tc.dolar, withCurrency: "R$ ")
        lblRealDescription.text = "Valor sem impostos (dólar \(dolar))
    }


}

