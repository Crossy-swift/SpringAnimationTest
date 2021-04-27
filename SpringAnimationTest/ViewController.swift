//
//  ViewController.swift
//  SpringAnimationTest
//
//  Created by Артем Репин on 27.04.2021.
//

import Spring

class SpringAnimationTestViewController: UIViewController {
    
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet var animationButton: SpringButton!
    
    
    @IBOutlet var labelView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    
    @IBOutlet var labelStackView: UIStackView!
    
    private var animations = SpringAnimation.getAnimation()
    
    override func viewDidLoad() {
        
        animationButton.setTitle("Start \(animations.preset)", for: .normal)
        animationButton.layer.cornerRadius = 15
        labelView.backgroundColor = .clear
        labelStackView.isHidden = true
    }
    
    @IBAction func springAnimationButton(_ sender: SpringButton) {
        
        labelStackView.isHidden = false
        
        springAnimationView.animation = animations.preset
        springAnimationView.curve = animations.curve
        springAnimationView.force = CGFloat(animations.force)
        springAnimationView.duration = CGFloat(animations.duration)
        springAnimationView.animate()
        
        labelView.animation = "squeezeLeft"
        labelView.force = 0.5
        labelView.duration = 2
        labelView.animate()
        
        presetLabel.text = "Preset: \(animations.preset)"
        curveLabel.text = "Curve: \(animations.curve)"
        forceLabel.text = "Force \(String(format: "%.02f", animations.force))"
        durationLabel.text = "Duration: \(String(format: "%.02f", animations.duration))"
        
        animations = SpringAnimation.getAnimation()
        sender.setTitle("Start \(animations.preset)", for: .normal)
    }
}

