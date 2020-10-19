//
//  ViewController.swift
//  Projekt
//
//  Created by Student on 19/10/2020.
//  Copyright © 2020 Łukasz. All rights reserved.
//

import UIKit

import Foundation


class ViewController: UIViewController {
   
    var punkty = 0
    var runda = 1
    var losowanie = -1
    let wynik = Int.random(in: 1...100)
    var counter = 0
    func policz_punkty()
    {
        let wybieranie = slider.value
        if wynik == losowanie
        {
            punkty = punkty + 100
        }
        else if abs(wynik - losowanie) == 1
        {
            punkty = punkty + 99
        }
        else if abs(wynik - losowanie) == 15
        {     punkty = punkty + 85
        }
        else if abs(wynik - losowanie) == 25
        {    punkty = punkty + 75
        }
    }
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderVal: UILabel!
    
   
    @IBOutlet weak var sprawdzbutton: UIButton!
    
    @IBAction func Sprawdź(_ sender: Any) {
        if(counter==10)
        {
           // resetowanie wyniku
            
        
        }
        else{
            
             policz_punkty()
        }
    }
    
    func graj()
    {
        
        Sprawdź(<#T##sender: Any##Any#>)
    }
    
    
 
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}
