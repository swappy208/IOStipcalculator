//
//  ViewController.swift
//  TipCalc
//
//  Created by Swapnil Tamrakar on 1/4/17.
//  Copyright © 2017 Swapnil Tamrakar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBillAmt: UITextField!
    @IBOutlet weak var textTipPct: UITextField!
    @IBOutlet weak var labelTipAmt: UILabel!
    @IBOutlet weak var labelTotalAmt: UILabel!
    @IBAction func buttonCalcPressed(sender: AnyObject) {
        let tipPer = Double(textTipPct.text!)
        let billAmt = Double(textBillAmt.text!)
        let tipAmt = billAmt! * tipPer!/100
        let totalPay = tipAmt + billAmt!
        labelTipAmt.text = "$\(tipAmt)"
        labelTotalAmt.text = "$\(totalPay)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

