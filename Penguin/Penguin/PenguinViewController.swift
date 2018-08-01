//
//  PenguinViewController.swift
//  Penguin
//
//  Created by mengdong on 16/8/20.
//  Copyright © 2016年 ShengboCai. All rights reserved.
//

import UIKit

class PenguinViewController: UIViewController {
    
    let delayTime:TimeInterval = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let contentView = UIView()
        contentView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 0.9)
        contentView.bounds = CGRect(x: 0, y: 0, width: 256, height: 256)
        contentView.center = view.center
        view.addSubview(contentView)
        
        // 头型
        let headPath = UIBezierPath()
        headPath.move(to: CGPoint(x: 55, y: 110))
        headPath.addQuadCurve(to: CGPoint(x: 128, y: 10), controlPoint: CGPoint(x: 60, y: 13))
        headPath.addQuadCurve(to: CGPoint(x: 203, y: 110), controlPoint: CGPoint(x: 198, y: 13))
        headPath.addQuadCurve(to: CGPoint(x: 55, y: 110), controlPoint: CGPoint(x: 128, y: 135))
        
        let headLayer = CAShapeLayer()
        headLayer.path = headPath.cgPath
        
        addLayerWithAnimated(layer: headLayer, delay: delayTime*0, toLayer: contentView.layer)
        
        // 左眼
        let leftEyePath = UIBezierPath(ovalIn: CGRect(x: 95, y: 38, width: 27, height: 37))
        let leftEyeLayer = CAShapeLayer()
        leftEyeLayer.path = leftEyePath.cgPath
        
        addLayerWithAnimated(layer: leftEyeLayer, delay: delayTime*1, toLayer: contentView.layer)
        
        
        // 左眼珠
        let leftEyeBallPath = UIBezierPath(ovalIn: CGRect(x: 107, y: 51, width: 11, height: 16))
        let leftEyeBallLayer = CAShapeLayer()
        leftEyeBallLayer.path = leftEyeBallPath.cgPath
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayTime*2) {
            let animate = CABasicAnimation(keyPath: "fillColor")
            animate.fromValue = UIColor.clear.cgColor
            animate.toValue = UIColor.black.cgColor
            animate.duration = self.delayTime
            animate.isRemovedOnCompletion = false
            animate.fillMode = kCAFillModeForwards
            
            contentView.layer.addSublayer(leftEyeBallLayer)
            leftEyeBallLayer.add(animate, forKey: nil)
        }

        
        // 右眼
        let rightEyePath = UIBezierPath(ovalIn: CGRect(x: 135, y: 38, width: 27, height: 37))
        let rightEyeLayer = CAShapeLayer()
        rightEyeLayer.path = rightEyePath.cgPath
        
        addLayerWithAnimated(layer: rightEyeLayer, delay: delayTime*3, toLayer: contentView.layer)
        
        // 右眼珠
        let rightEyeBallPath = UIBezierPath()
        rightEyeBallPath.move(to: CGPoint(x: 139, y: 60))
        rightEyeBallPath.addQuadCurve(to: CGPoint(x: 155, y: 56), controlPoint: CGPoint(x: 145, y: 51))
        rightEyeBallPath.addLine(to: CGPoint(x: 154, y: 60))
        rightEyeBallPath.addQuadCurve(to: CGPoint(x: 140, y: 61), controlPoint: CGPoint(x: 146, y: 52))
        
        let rightEyeBallLayer = CAShapeLayer()
        rightEyeBallLayer.path = rightEyeBallPath.cgPath
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayTime*4) {
            let animate = CABasicAnimation(keyPath: "fillColor")
            animate.fromValue = UIColor.clear.cgColor
            animate.toValue = UIColor.black.cgColor
            animate.duration = self.delayTime
            animate.isRemovedOnCompletion = false
            animate.fillMode = kCAFillModeForwards
            
            contentView.layer.addSublayer(rightEyeBallLayer)
            rightEyeBallLayer.add(animate, forKey: nil)
        }
        
        // 嘴
        let mousePath = UIBezierPath()
        mousePath.move(to: CGPoint(x: 82, y: 92))
        mousePath.addQuadCurve(to: CGPoint(x: 174, y: 92), controlPoint: CGPoint(x: 128, y: 78))
        mousePath.addQuadCurve(to: CGPoint(x: 82, y: 92), controlPoint: CGPoint(x: 128, y: 130))
        
        let mouseLayer = CAShapeLayer()
        mouseLayer.path = mousePath.cgPath
        addLayerWithAnimated(layer: mouseLayer, delay: delayTime*5, toLayer: contentView.layer)
        
        // 围巾
        let scarfPath = UIBezierPath()
        scarfPath.move(to: CGPoint(x: 55, y: 110))
        scarfPath.addQuadCurve(to: CGPoint(x: 203, y: 110), controlPoint: CGPoint(x: 128, y: 135))
        scarfPath.addLine(to: CGPoint(x: 213, y: 135))
        scarfPath.addQuadCurve(to: CGPoint(x: 114, y: 148), controlPoint: CGPoint(x: 155, y: 155))
        scarfPath.addLine(to: CGPoint(x: 114, y: 180))
        scarfPath.addQuadCurve(to: CGPoint(x: 81, y: 178), controlPoint: CGPoint(x: 99, y: 182))
        scarfPath.addLine(to: CGPoint(x: 81, y: 144))
        scarfPath.addQuadCurve(to: CGPoint(x: 44, y: 135), controlPoint: CGPoint(x: 62, y: 141))
        scarfPath.close()
        
        let scarfLayer = CAShapeLayer()
        scarfLayer.path = scarfPath.cgPath
        
        addLayerWithAnimated(layer: scarfLayer, delay: delayTime*6, toLayer: contentView.layer)
        
        // 左 右胳膊
        let leftArmPath = UIBezierPath()
        leftArmPath.move(to: CGPoint(x: 44, y: 135))
        leftArmPath.addLine(to: CGPoint(x: 33, y: 171))
        leftArmPath.addQuadCurve(to: CGPoint(x: 31, y: 204), controlPoint: CGPoint(x: 25, y: 191))
        leftArmPath.addQuadCurve(to: CGPoint(x: 52, y: 180), controlPoint: CGPoint(x: 41, y: 200))
        leftArmPath.addQuadCurve(to: CGPoint(x: 128, y: 244), controlPoint: CGPoint(x: 75, y: 250))
        leftArmPath.addQuadCurve(to: CGPoint(x: 204, y: 180), controlPoint: CGPoint(x: 181, y: 250))
        leftArmPath.addQuadCurve(to: CGPoint(x: 225, y: 204), controlPoint: CGPoint(x: 214, y: 200))
        leftArmPath.addQuadCurve(to: CGPoint(x: 223, y: 171), controlPoint: CGPoint(x: 231, y: 191))
        leftArmPath.addLine(to: CGPoint(x: 212, y: 135))
        
        // 肚子
        leftArmPath.addQuadCurve(to: CGPoint(x: 183, y: 145), controlPoint: CGPoint(x: 198, y: 140))
        leftArmPath.addCurve(to: CGPoint(x: 128, y: 235), controlPoint1: CGPoint(x: 190, y: 183), controlPoint2: CGPoint(x: 171, y: 240))
        leftArmPath.addCurve(to: CGPoint(x: 73, y: 143), controlPoint1: CGPoint(x: 85, y: 240), controlPoint2: CGPoint(x: 66, y: 183))
        leftArmPath.addQuadCurve(to: CGPoint(x: 44, y: 135), controlPoint: CGPoint(x: 58, y: 140))
        
        let leftArmLayer = CAShapeLayer()
        leftArmLayer.path = leftArmPath.cgPath
        
        addLayerWithAnimated(layer: leftArmLayer, delay: delayTime*7, toLayer: contentView.layer)
        
        
        // 左脚
        let leftLegPath = UIBezierPath()
        leftLegPath.move(to: CGPoint(x: 77, y: 227))
        leftLegPath.addQuadCurve(to: CGPoint(x: 56, y: 237), controlPoint: CGPoint(x: 64, y: 231))
        leftLegPath.addQuadCurve(to: CGPoint(x: 56, y: 242), controlPoint: CGPoint(x: 50, y: 239))
        leftLegPath.addQuadCurve(to: CGPoint(x: 126, y: 244), controlPoint: CGPoint(x: 91, y: 248))
        leftLegPath.addQuadCurve(to: CGPoint(x: 77, y: 227), controlPoint: CGPoint(x: 96, y: 244))
        
        let leftLegLayer = CAShapeLayer()
        leftLegLayer.path = leftLegPath.cgPath
        
        addLayerWithAnimated(layer: leftLegLayer, delay: delayTime*8, toLayer: contentView.layer)
        
        // 右脚
        let rightLegPath = UIBezierPath()
        rightLegPath.move(to: CGPoint(x: 179, y: 227))
        rightLegPath.addQuadCurve(to: CGPoint(x: 200, y: 237), controlPoint: CGPoint(x: 192, y: 231))
        rightLegPath.addQuadCurve(to: CGPoint(x: 200, y: 242), controlPoint: CGPoint(x: 206, y: 239))
        rightLegPath.addQuadCurve(to: CGPoint(x: 130, y: 244), controlPoint: CGPoint(x: 165, y: 248))
        rightLegPath.addQuadCurve(to: CGPoint(x: 179, y: 227), controlPoint: CGPoint(x: 160, y: 244))
        
        let rightLegLayer = CAShapeLayer()
        rightLegLayer.path = rightLegPath.cgPath
        
        addLayerWithAnimated(layer: rightLegLayer, delay: delayTime*9, toLayer: contentView.layer)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayTime*10) {
            headLayer.fillColor = UIColor.black.cgColor
            
            leftEyeLayer.fillColor = UIColor.white.cgColor
            
            rightEyeLayer.fillColor = UIColor.white.cgColor
            
            mouseLayer.fillColor = UIColor(red: 246/255.0, green: 146/255.0, blue: 12/255.0, alpha: 1.0).cgColor
            
            leftArmLayer.fillColor = UIColor.black.cgColor
            
            leftLegLayer.fillColor = UIColor(red: 246/255.0, green: 146/255.0, blue: 12/255.0, alpha: 1.0).cgColor
            
            rightLegLayer.fillColor = UIColor(red: 246/255.0, green: 146/255.0, blue: 12/255.0, alpha: 1.0).cgColor
            
            scarfLayer.fillColor = UIColor(red: 223/255.0, green: 0, blue: 25/255.0, alpha: 1.0).cgColor
            
            scarfLayer.lineWidth = 0
            
            leftLegLayer.lineWidth = 0
            
            rightLegLayer.lineWidth = 0
        }
    }
    
    func addLayerWithAnimated(layer: CAShapeLayer, delay: TimeInterval, toLayer: CALayer, fillColor: CGColor = UIColor.clear.cgColor) {
        
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delay) {
            layer.fillColor = fillColor
            layer.lineWidth = 1
            layer.strokeColor = UIColor.black.cgColor
            
            let animate = CABasicAnimation(keyPath: "strokeEnd")
            animate.fromValue = NSNumber(floatLiteral: 0)
            animate.toValue = NSNumber(floatLiteral: 1)
            animate.duration = self.delayTime
            animate.isRemovedOnCompletion = false
            animate.fillMode = kCAFillModeForwards
            
            layer.add(animate, forKey: nil)
            toLayer.addSublayer(layer)
        }
    }
    
}
