//
//  PenguinViewController.swift
//  Penguin
//
//  Created by mengdong on 16/8/20.
//  Copyright © 2016年 ShengboCai. All rights reserved.
//

import UIKit

class PenguinViewController: UIViewController {
    
    let delayTime:NSTimeInterval = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.view.backgroundColor = UIColor.whiteColor();
        
        let contentView = UIView();
        contentView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 0.9);
        contentView.bounds = CGRectMake(0, 0, 256, 256);
        contentView.center = self.view.center;
        self.view.addSubview(contentView);
        
        // 头型
        let headPath = UIBezierPath();
        headPath.moveToPoint(CGPointMake(55, 110));
        headPath.addQuadCurveToPoint(CGPointMake(128, 10), controlPoint: CGPointMake(60, 13));
        headPath.addQuadCurveToPoint(CGPointMake(203, 110), controlPoint: CGPointMake(198, 13));
        headPath.addQuadCurveToPoint(CGPointMake(55, 110), controlPoint: CGPointMake(128, 135));
        
        let headLayer = CAShapeLayer();
        headLayer.path = headPath.CGPath;
        
        self.addLayerWithAnimated(headLayer, delay: delayTime*0, toLayer: contentView.layer);
        
        
        // 左眼
        let leftEyePath = UIBezierPath(ovalInRect: CGRectMake(95, 38, 27, 37));
        let leftEyeLayer = CAShapeLayer();
        leftEyeLayer.path = leftEyePath.CGPath;
        
        self.addLayerWithAnimated(leftEyeLayer, delay: delayTime*1, toLayer: contentView.layer);
        
        
        // 左眼珠
        let leftEyeBallPath = UIBezierPath(ovalInRect: CGRectMake(107, 51, 11, 16));
        let leftEyeBallLayer = CAShapeLayer();
        leftEyeBallLayer.path = leftEyeBallPath.CGPath;
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(delayTime*2*NSTimeInterval(NSEC_PER_SEC))), dispatch_get_main_queue(), {
            let animate = CABasicAnimation(keyPath: "fillColor");
            animate.toValue = UIColor.clearColor().CGColor;
            animate.toValue = UIColor.blackColor().CGColor;
            animate.duration = self.delayTime;
            animate.removedOnCompletion = false;
            animate.fillMode = kCAFillModeForwards;
            
            contentView.layer.addSublayer(leftEyeBallLayer);
            leftEyeBallLayer.addAnimation(animate, forKey: nil);
        });
        
        // 右眼
        let rightEyePath = UIBezierPath(ovalInRect: CGRectMake(135, 38, 27, 37));
        let rightEyeLayer = CAShapeLayer();
        rightEyeLayer.path = rightEyePath.CGPath;
        
        self.addLayerWithAnimated(rightEyeLayer, delay: delayTime*3, toLayer: contentView.layer);
        
        // 右眼珠
        let rightEyeBallPath = UIBezierPath();
        rightEyeBallPath.moveToPoint(CGPointMake(139, 60));
        rightEyeBallPath.addQuadCurveToPoint(CGPointMake(155, 56), controlPoint: CGPointMake(145, 51));
        rightEyeBallPath.addLineToPoint(CGPointMake(154, 60));
        rightEyeBallPath.addQuadCurveToPoint(CGPointMake(140, 61), controlPoint: CGPointMake(146, 52));
        
        let rightEyeBallLayer = CAShapeLayer();
        rightEyeBallLayer.path = rightEyeBallPath.CGPath;
        rightEyeBallLayer.fillColor = UIColor.blackColor().CGColor;
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(delayTime*4*NSTimeInterval(NSEC_PER_SEC))), dispatch_get_main_queue(), {
            contentView.layer.addSublayer(rightEyeBallLayer);
        });
        
        // 嘴
        let mousePath = UIBezierPath();
        mousePath.moveToPoint(CGPointMake(82, 92));
        mousePath.addQuadCurveToPoint(CGPointMake(174, 92), controlPoint: CGPointMake(128, 78));
        mousePath.addQuadCurveToPoint(CGPointMake(82, 92), controlPoint: CGPointMake(128, 130));
        
        let mouseLayer = CAShapeLayer();
        mouseLayer.path = mousePath.CGPath;
        self.addLayerWithAnimated(mouseLayer, delay: delayTime*5, toLayer: contentView.layer);
        
        // 围巾
        let scarfPath = UIBezierPath();
        scarfPath.moveToPoint(CGPointMake(55, 110));
        scarfPath.addQuadCurveToPoint(CGPointMake(203, 110), controlPoint: CGPointMake(128, 135));
        scarfPath.addLineToPoint(CGPointMake(213, 135));
        scarfPath.addQuadCurveToPoint(CGPointMake(114, 148), controlPoint: CGPointMake(155, 155));
        scarfPath.addLineToPoint(CGPointMake(114, 180));
        scarfPath.addQuadCurveToPoint(CGPointMake(81, 178), controlPoint: CGPointMake(99, 182));
        scarfPath.addLineToPoint(CGPointMake(81, 144));
        scarfPath.addQuadCurveToPoint(CGPointMake(44, 135), controlPoint: CGPointMake(62, 141));
        scarfPath.closePath();
        
        let scarfLayer = CAShapeLayer();
        scarfLayer.path = scarfPath.CGPath;
        
        self.addLayerWithAnimated(scarfLayer, delay: delayTime*6, toLayer: contentView.layer);
        
        // 左 右胳膊
        let leftArmPath = UIBezierPath();
        leftArmPath.moveToPoint(CGPointMake(44, 135));
        leftArmPath.addLineToPoint(CGPointMake(33, 171));
        leftArmPath.addQuadCurveToPoint(CGPointMake(31, 204), controlPoint: CGPointMake(25, 191));
        leftArmPath.addQuadCurveToPoint(CGPointMake(52, 180), controlPoint: CGPointMake(41, 200));
        leftArmPath.addQuadCurveToPoint(CGPointMake(128, 244), controlPoint: CGPointMake(75, 250));
        leftArmPath.addQuadCurveToPoint(CGPointMake(204, 180), controlPoint: CGPointMake(181, 250));
        leftArmPath.addQuadCurveToPoint(CGPointMake(225, 204), controlPoint: CGPointMake(214, 200));
        leftArmPath.addQuadCurveToPoint(CGPointMake(223, 171), controlPoint: CGPointMake(231, 191));
        leftArmPath.addLineToPoint(CGPointMake(212, 135));
        
        // 肚子
        leftArmPath.addQuadCurveToPoint(CGPointMake(183, 145), controlPoint: CGPointMake(198, 140));
        leftArmPath.addCurveToPoint(CGPointMake(128, 235), controlPoint1: CGPointMake(190, 183), controlPoint2: CGPointMake(171, 240));
        leftArmPath.addCurveToPoint(CGPointMake(73, 143), controlPoint1: CGPointMake(85, 240), controlPoint2: CGPointMake(66, 183));
        leftArmPath.addQuadCurveToPoint(CGPointMake(44, 135), controlPoint: CGPointMake(58, 140))
        
        let leftArmLayer = CAShapeLayer();
        leftArmLayer.path = leftArmPath.CGPath;
        
        self.addLayerWithAnimated(leftArmLayer, delay: delayTime*7, toLayer: contentView.layer);
        
        
        // 左脚
        let leftLegPath = UIBezierPath();
        leftLegPath.moveToPoint(CGPointMake(77, 227));
        leftLegPath.addQuadCurveToPoint(CGPointMake(56, 237), controlPoint: CGPointMake(64, 231));
        leftLegPath.addQuadCurveToPoint(CGPointMake(56, 242), controlPoint: CGPointMake(50, 239));
        leftLegPath.addQuadCurveToPoint(CGPointMake(126, 244), controlPoint: CGPointMake(91, 248));
        leftLegPath.addQuadCurveToPoint(CGPointMake(77, 227), controlPoint: CGPointMake(96, 244));
        
        let leftLegLayer = CAShapeLayer();
        leftLegLayer.path = leftLegPath.CGPath;
        
        self.addLayerWithAnimated(leftLegLayer, delay: delayTime*8, toLayer: contentView.layer);
        
        // 右脚
        let rightLegPath = UIBezierPath();
        rightLegPath.moveToPoint(CGPointMake(179, 227));
        rightLegPath.addQuadCurveToPoint(CGPointMake(200, 237), controlPoint: CGPointMake(192, 231));
        rightLegPath.addQuadCurveToPoint(CGPointMake(200, 242), controlPoint: CGPointMake(206, 239));
        rightLegPath.addQuadCurveToPoint(CGPointMake(130, 244), controlPoint: CGPointMake(165, 248));
        rightLegPath.addQuadCurveToPoint(CGPointMake(179, 227), controlPoint: CGPointMake(160, 244));
        
        let rightLegLayer = CAShapeLayer();
        rightLegLayer.path = rightLegPath.CGPath;
        
        self.addLayerWithAnimated(rightLegLayer, delay: delayTime*9, toLayer: contentView.layer);
        
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(delayTime*10*NSTimeInterval(NSEC_PER_SEC))), dispatch_get_main_queue()) {
            
            headLayer.fillColor = UIColor.blackColor().CGColor;
            headLayer.borderWidth = 0;
            leftEyeLayer.fillColor = UIColor.whiteColor().CGColor;
            leftEyeLayer.borderWidth = 0;
            rightEyeLayer.fillColor = UIColor.whiteColor().CGColor;
            rightEyeLayer.borderWidth = 0;
            mouseLayer.fillColor = UIColor(red: 246/255.0, green: 146/255.0, blue: 12/255.0, alpha: 1.0).CGColor;
            mouseLayer.borderWidth = 0;
            leftArmLayer.fillColor = UIColor.blackColor().CGColor;
            leftArmLayer.borderWidth = 0;
            leftLegLayer.fillColor = UIColor(red: 246/255.0, green: 146/255.0, blue: 12/255.0, alpha: 1.0).CGColor;
            leftLegLayer.borderWidth = 0;
            rightLegLayer.fillColor = UIColor(red: 246/255.0, green: 146/255.0, blue: 12/255.0, alpha: 1.0).CGColor;
            rightLegLayer.borderWidth = 0;
            scarfLayer.fillColor = UIColor(red: 223/255.0, green: 0, blue: 25/255.0, alpha: 1.0).CGColor;
            scarfLayer.borderWidth = 0;
        }
        
    }
    
    func addLayerWithAnimated(layer: CAShapeLayer, delay: NSTimeInterval, toLayer: CALayer, fillColor: CGColor = UIColor.clearColor().CGColor) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(delay*NSTimeInterval(NSEC_PER_SEC))), dispatch_get_main_queue()) {
            
            layer.fillColor = fillColor;
            layer.lineWidth = 1;
            layer.strokeColor = UIColor.blackColor().CGColor;
            
            let animate = CABasicAnimation(keyPath: "strokeEnd");
            animate.fromValue = NSNumber(float: 0);
            animate.toValue = NSNumber(float: 1);
            animate.duration = self.delayTime;
            animate.removedOnCompletion = false;
            animate.fillMode = kCAFillModeForwards;
            
            layer.addAnimation(animate, forKey: nil);
            toLayer.addSublayer(layer);
        }
    }
    
}
