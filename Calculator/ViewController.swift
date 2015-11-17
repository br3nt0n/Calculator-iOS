import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingNumber: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        //Optional type has two values - nil (Not set), or something
        //An optional that can be a string
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingNumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingNumber = true
        }
        
        print("digit = \(digit)")
    }
}

