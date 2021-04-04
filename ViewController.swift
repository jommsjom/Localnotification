//
//  ViewController.swift
//  Thridlocal notification
//
//  Created by Jomms on 12/01/21.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setReminder(_sender:Any){
        
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "reminder"
        content.body = "this is local notification"
        content.sound = .default
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval:20, repeats:false)
        let request = UNNotificationRequest(identifier:"reminder", content: content, trigger: trigger)
        center.add(request){(error)in
            if error != nil{
                print("error = \(error?.localizedDescription ?? "error local notification")")
            }
        }
        
        
    }
    

}

