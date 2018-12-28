//
//  FirstViewController.swift
//  PersonalProject
//
//  Created by Yue Fung Lee on 26/12/2018.
//  Copyright © 2018 Yue Fung Lee. All rights reserved.
//

import UIKit
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
        slide1.imageView.image = UIImage(named: "breathing1")
        slide1.labelTitle.text = "How Breathing Helps"
        slide1.labelCreds.text = "Deep breathing increases the supply of oxygen to your brain and stimulates an autonomic nervous system, which promotes a calm and slows your heart rate."
        
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.imageView.image = UIImage(named: "breathing2")
        slide2.labelTitle.text = "How Breathing Helps"
        slide2.labelTitle2.text = "Deep Breathing deeply slows down the release of cortisol, a major stress hormone."
        
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.imageView.image = UIImage(named: "ic_onboarding_3")
        slide3.labelTitle.text = "A real-life bear"
        slide3.labelTitle2.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        let slide4:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide4.imageView.image = UIImage(named: "ic_onboarding_4")
        slide4.labelTitle.text = "A real-life bear"
        slide4.labelTitle2.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        
        let slide5:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide5.imageView.image = UIImage(named: "ic_onboarding_5")
        slide5.labelTitle.text = "A real-life bear"
        slide5.labelTitle2.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        return [slide1, slide2, slide3, slide4, slide5]
        
    
    
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
