//
//  AnimationModel.swift
//  SpringAnimationTest
//
//  Created by Артем Репин on 27.04.2021.
//
import Spring

struct SpringAnimation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
}

class AnimationType {
    
    let preset = [
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "fadeIn",
        "fadeOut",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "pop",
        "flipX",
        "flipY",
        "morph",
        "squeeze",
        "flash",
        "wobble",
        "swing",
    ]
    
    let curve = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad",
        "easeInOutQuad",
        "easeInCubic",
        "easeOutCubic",
        "easeInOutCubic",
        "easeInQuart",
        "easeOutQuart",
        "easeInOutQuart",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack",
    ]
    
    static let giveInfo = AnimationType()
}

extension SpringAnimation{
    static func getAnimation() -> SpringAnimation {
        
        return SpringAnimation(
            preset: AnimationType.giveInfo.preset.randomElement() ?? "",
            curve: AnimationType.giveInfo.curve.randomElement() ?? "",
            force: Float.random(in: 0.1...2),
            duration: Float.random(in: 1...3)
        )
    }
}
