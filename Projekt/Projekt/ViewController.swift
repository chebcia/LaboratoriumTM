import UIKit

class ViewController: UIViewController {
    
    var punkty = 0
    var runda = 0
    var wynik = Int.random(in: 1...100)
    var liczba = 0

    @IBOutlet weak var sliderek: UISlider!
    @IBOutlet weak var round: UILabel!
    @IBOutlet weak var RandomNumber: UILabel!
    @IBOutlet weak var point: UILabel!
    @IBAction func check(_ sender: Any)
    {
        if(runda < 10)
        { runda = runda+1
            if(wynik == liczba)
            {
                punkty = punkty + 100
            }
            else if (abs(wynik - liczba)) == 10
            {
                punkty = punkty + 99
            }
            else if (abs(wynik - liczba)) == 15
            {
                punkty = punkty + 85
            }
            else if (abs(wynik - liczba)) == 25
            {
                punkty = punkty + 75
            }
            point.text = (String)(punkty)
            round.text = (String)(runda)
            RandomNumber.text = (String)(wynik)
        }
    }
    @IBAction func Restart_button(_ sender: Any) {
    RandomNumber.text = (String)(wynik)
        runda = 1
        punkty = 0
        
    }
    @IBAction func slider(_ sender: Any) {
        liczba = Int(sliderek.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
