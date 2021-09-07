//
//  ViewController.swift
//  Practica-30Agosto
//
//  Created by David Encinas on 30/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTotalCuenta: UITextField!
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    @IBOutlet weak var lblTotalPropina: UILabel!
    @IBOutlet weak var lblCantidadTotalConPropina: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doChangePorcentajePropina(_ sender: Any) {
        lblPorcentajePropina.text = "\(String(Int(sldPorcentajePropina.value)))"
        if txtTotalCuenta.text != nil && txtTotalCuenta.text != ""{
            let cuenta = Float(txtTotalCuenta.text!)!
            let porcentaje = Float(Int(sldPorcentajePropina.value))
            let propina = cuenta * (porcentaje / 100.0)
            lblTotalPropina.text = "$\(String(format: "%.2f", propina))"
            lblCantidadTotalConPropina.text = "$\(String(format: "%.2f", cuenta + propina))"
        }
    }
    @IBAction func doEditEndTotalCuenta(_ sender: Any) {
        
    }
    
}

