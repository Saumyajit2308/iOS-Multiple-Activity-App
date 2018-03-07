//
//  StartViewController.swift
//  sam
//
//  Created by user136776 on 3/5/18.
//  Copyright © 2018 user136776. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var cont: UIButton!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var welcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2.jpg")!)
        bgImage.loadGif(name: "giphy")
        cont.backgroundColor = UIColor.white
        
        cont.layer.cornerRadius = cont.frame.height/2
        
        cont.setTitleColor(UIColor.black, for: .normal)
        
        cont.layer.shadowColor = UIColor.lightGray.cgColor
        cont.layer.shadowRadius = 12
        cont.layer.shadowOpacity = 0.5
        cont.layer.shadowOffset = CGSize(width: 0, height: 0)
        cont.layer.masksToBounds = true
        cont.setGradientBackground(colorOne: Colors.white, colorTwo: Colors.blue)
        //cont.layer.borderWidth = 2.0
        //cont.layer.borderColor = UIColor.black.cgColor
        label.backgroundColor = UIColor(patternImage: UIImage(named: "1")!)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.alpha = 0.0
        welcome.alpha = 0.0
        bgImage.alpha = 0.0
        cont.alpha = 0.0
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2.0, animations: {
        self.label.alpha = 1.0
        self.label.center.y += 85
        }, completion: nil)
        UIView.animate(withDuration: 2.0, animations: {
            self.welcome.alpha = 1.0
            self.welcome.center.y += 85
        }, completion: nil)
        UIView.animate(withDuration: 1, delay: 0.0, options: [], animations: {
        self.bgImage.alpha = 1.0
        }, completion: nil)
        UIView.animate(withDuration: 2.0, animations: {
        self.cont.alpha = 1.0
        self.cont.center.y -= 70
        }, completion: nil)
    }
    @IBAction func click(_ sender: UIButton) {
        sender.pulsate()
        performSegue(withIdentifier: "Nav", sender: self)
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
