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
    
    
    func setupSlideScrollView(slides : [Slide]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
            
            func createSlides() -> [Slide] {
                
                let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
                slide1.imageView.image = UIImage(named: "breathing1")
                slide1.labelTitle.text = "How Breathing Helps"
                slide1.labelCreds.text = "Deep breathing increases the supply of oxygen to your brain and stimulates an autonomic nervous system, which promotes a calm and slows your heart rate."
                slide1.labelCreds.text = "gif from destressmonday.org"
                
                let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
                slide2.imageView.image = UIImage(named: "breathing2")
                slide2.labelTitle.text = "How Breathing Helps"
                slide2.labelTitle2.text = "Deep breathing also slows down the release of cortisol, a major stress hormone."
                slide2.labelCreds.text = "gif from destressmonday.org"
                
                let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
                slide3.imageView.image = UIImage(named: "breathing3")
                slide3.labelTitle.text = "How Breathing Helps"
                slide3.labelTitle2.text = "Deep breathing helps relax tension you didn't realise you were holding (such as clenching your jaw or tightening your shoulders)"
                slide3.labelCreds.text = "gif from destressmonday.org"
                
                let slide4:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
                slide4.imageView.image = UIImage(named: "breathing4")
                slide4.labelTitle.text = "How Breathing Helps"
                slide4.labelTitle2.text = "Hyperventilation disrupts the balance of oxygen in your body, making the symptoms of stress worse. Deep breathing remedies that!"
                slide3.labelCreds.text = "gif from destressmonday.org"
                
                let slide5:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
                slide5.imageView.image = UIImage(named: "breathing5")
                slide5.labelTitle.text = "How Breathing Helps"
                slide5.labelCreds.text = "Deep breathing increases the supply of oxygen to your brain and stimulates an autonomic nervous system, which promotes a calm and slows your heart rate."
                slide5.labelCreds.text = "gif from destressmonday.org"
                
                let slide6:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
                slide6.imageView.image = UIImage(named: "breathing5")
                slide6.labelTitle.text = "How Breathing Helps"
                slide6.labelTitle2.text = "Deep breathing also slows down the release of cortisol, a major stress hormone."
                slide6.labelCreds.text = "gif from destressmonday.org"
                
                let slide7:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
                slide7.imageView.image = UIImage(named: "breathing5")
                slide7.labelTitle.text = "How Breathing Helps"
                slide7.labelTitle2.text = "Deep breathing helps relax tension you didn't realise you were holding (such as clenching your jaw or tightening your shoulders)"
                slide7.labelCreds.text = "gif from destressmonday.org"
                
                return [slide1, slide2, slide3, slide4, slide5, slide6, slide7]
                
                
                
                //let gif = UIImage(gifName: "breathing1.gif")
                //let imageView = UIImageView(gifImage: gif, loopCount: -1)
                //self.image1.setGifImage(gif)
                
                
            }
            
        }
        
    }

    override func viewDidLoad() {
    
        super.viewDidLoad()
        slides = createSlides()
        setupSlideScrollView(slides: [Slide])
        
        pageControl.numberOfPages = slides.count
        pageControl.currentPage = 0
        view.bringSubviewToFront(pageControl)
        
     
        scrollView.delegate = self
        



}
}
