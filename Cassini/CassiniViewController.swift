
//  CassiniViewController.swift
//  Cassini
//
//  Created by zhiang on 2018/11/11.
//  Copyright © 2018年 王之昂. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController, UISplitViewControllerDelegate {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.splitViewController?.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""] {
            if let imageVC = (segue.destination.contens as? ImageViewController) {
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
            }
        }
    }
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        if primaryViewController.contens == self, let ivc = secondaryViewController.contens as? ImageViewController, ivc.imageURL == nil {
            return true 
        }
        return false
    }

}

extension UIViewController {
    var contens: UIViewController {
        if let navon = self as? UINavigationController {
            return navon.visibleViewController ?? self
        }
        return self
    }
}
