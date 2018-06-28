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
