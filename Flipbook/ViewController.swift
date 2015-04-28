//
//  ViewController.swift
//  Flipbook
//
//  Created by James Frost on 21/11/2014.
//  Copyright (c) 2014 James Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activityFlipbook: Flipbook!
    var arcFlipbook: Flipbook!
    
    @IBOutlet weak var arcView: ArcView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let container = UIView(frame: CGRect(x: 0, y: 0, width: 160, height: 160))
        view.addSubview(container)
        container.backgroundColor = UIColor.clearColor()

        var pointAnnotation:MKPointAnnotation = MKPointAnnotation()
        pointAnnotation.title = "Apple HQ"
        var annotationView: SVPulsingAnnotationView = SVPulsingAnnotationView(annotation: pointAnnotation, reuseIdentifier: "test")
   
        annotationView.annotationColor = UIColor.redColor()
        annotationView.backgroundColor = UIColor.clearColor()
        annotationView.frame = CGRectMake(60, 60, annotationView.frame.size.width, annotationView.frame.size.height)
        container.addSubview(annotationView)
        
        activityFlipbook = Flipbook()
        activityFlipbook.renderTargetView(container, duration: 3.0, imagePrefix: "pulse")
        

      
//        activityFlipbook.renderTargetView(activity, duration: 1.0, imagePrefix: "activity")
//        activity.startAnimating()
    }
    
}

