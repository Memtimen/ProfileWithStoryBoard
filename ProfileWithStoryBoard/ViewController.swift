//
//  ViewController.swift
//  ProfileWithStoryBoard
//
//  Created by Maimaitiming Abudukadier on 2/15/15.
//  Copyright (c) 2015 Maimaitiming Abudukadier. All rights reserved.
//

import UIKit

class ViewController: UIViewController,TableViewForProfileDelegate {
    @IBOutlet weak var constrantForViewForNameTop: NSLayoutConstraint!
    @IBOutlet weak var constraintForViewForCover: NSLayoutConstraint!
    @IBOutlet weak var viewForCover: UIView!
    @IBOutlet weak var viewForName: UIView!
    @IBOutlet weak var imageViewForCover: UIImageView!
    @IBOutlet weak var viewForNavi: UIView!
    @IBOutlet weak var labelForName: UILabel!
    @IBOutlet weak var labelForLocationInfo: UILabel!
    @IBOutlet weak var imageViewForUserPhoto: UIImageView!
    
    var inset:CGFloat?
    var widthOfView:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inset = CGRectGetWidth(self.view.frame)*0.6
        let tableviewController = self.childViewControllers[0] as? TableViewController
        tableviewController?.delegate = self
        inset = tableviewController?.tableView.contentInset.top
        widthOfView = CGRectGetWidth(self.view.frame)
        imageViewForUserPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        imageViewForUserPhoto.layer.borderWidth = 4
    }

    //MARK: TableviewDetegate
    func tableviewDidScroll(offSetY: CGFloat) {
        constrantForViewForNameTop.constant = -offSetY - inset!
        constraintForViewForCover.constant = -(CGRectGetWidth(self.view.frame)-inset!)/2-(offSetY+inset!)/2
        
    
        if offSetY <= -widthOfView! {
            self.imageViewForCover.transform = CGAffineTransformMakeScale(abs(offSetY)/widthOfView! , abs(offSetY)/widthOfView!)
        }else{
            self.imageViewForCover.transform = CGAffineTransformMakeScale(1,1)
        }
        //For Navi
        if offSetY >= -64 {
            UIView.animateWithDuration(0, animations: { () -> Void in
                self.viewForNavi.alpha = 1
            })
        }else{
                self.viewForNavi.alpha = 0
        }
        
        //for alpha... this is magic
        if offSetY >= -150 {
            var 😜 = sqrt(offSetY / -150)
            var 👻 = abs(offSetY / -150) * 😜 * 😜 * 😜 * 😜 * 😜 * 😜 * 😜 * 😜 * 😜 * 😜
            self.labelForName.alpha = 👻
            self.labelForLocationInfo.alpha = 👻
            self.imageViewForUserPhoto.alpha = 👻
        }else{
            var 👻 = abs(offSetY / -120)
            self.labelForName.alpha = 👻
            self.labelForLocationInfo.alpha = 👻
            self.imageViewForUserPhoto.alpha = 👻
        }
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    @IBAction func ChangeCoverPhoto(sender: AnyObject) {
        var number = arc4random() % 44
        self.imageViewForCover.image = UIImage(named: "g\(number)")
    }
    
}