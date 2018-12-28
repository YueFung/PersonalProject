//
//  FirstViewController.swift
//  PersonalProject
//
//  Created by Yue Fung Lee on 26/12/2018.
//  Copyright © 2018 Yue Fung Lee. All rights reserved.
//

import UIKit]
import SwiftyGif

class FirstViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!

    var slides:[Slide] = [];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        scrollView.delegate = self
        
    func createSlides() -> [Slide] {
        
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.imageView.image = UIImage(named: "ic_onboarding_1")
        slide1.labelTitle.text = "A real-life bear"
        slide1.labelCreds.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
    
    
        func setupSlideScrollView(slides : [Slide]) {
            scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
            scrollView.isPagingEnabled = true
            
            for i in 0 ..< slides.count {
                slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
                scrollView.addSubview(slides[i])
        //let gif = UIImage(gifName: "breathing1.gif")
        //let imageView = UIImageView(gifImage: gif, loopCount: -1)
        //self.image1.setGifImage(gif)
        
        
    }


}

        return [slide1]
}
}
}
