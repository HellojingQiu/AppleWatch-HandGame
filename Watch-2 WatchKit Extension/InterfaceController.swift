//
//  InterfaceController.swift
//  Watch-2 WatchKit Extension
//
//  Created by OliHire-HellowJingQiu on 15/4/28.
//  Copyright (c) 2015年 OliHire-HellowJingQiu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    //图片
    @IBOutlet weak var image: WKInterfaceImage!
    
    @IBAction func gameStart() {
        image.setImageNamed("animate")
        image.startAnimatingWithImagesInRange(NSMakeRange(0, 3), duration: 0.3, repeatCount: 3)
        delay(0.9, closure: { () -> () in
            self.image.setImageNamed("animate\(arc4random()%3)")
        })
    }
    
    func delay(second:Double,closure:()->()){
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(second * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), closure)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
