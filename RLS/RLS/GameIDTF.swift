//
//  GameIDTF.swift
//  GameMap
//
//  Created by Melody Lee on 4/22/18.
//  Copyright © 2018 Hackathon Event. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class GameIDTF: UIViewController {
    @IBOutlet var idTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func EnterButton(_ sender: Any) {
        gameID = idTF.text ?? ""
        
        if (networking.checkGameIDTaken(idToCheck: gameID, hostOrJoin: "j")) {
            self.performSegue(withIdentifier: "JoinEnterNicknameSegue", sender: self)
        } else {
            print("\(gameID) doesn't exists")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if idTF.text != "" {
            let DestViewController : NicknameTFView = segue.destination as! NicknameTFView
            DestViewController.id = idTF.text!
        }
    }
}
