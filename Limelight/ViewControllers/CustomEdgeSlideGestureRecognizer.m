//
//  CustomEdgeSlideGestureRecognizer.m
//  Moonlight-ZWM
//
//  Created by ZWM on 2024/4/30.
//  Copyright © 2024 Moonlight Game Streaming Project. All rights reserved.
//

// #import <Foundation/Foundation.h>

#import "CustomEdgeSlideGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>
#import "NativeTouchHandler.h"

@implementation CustomEdgeSlideGestureRecognizer{
    UITouch* capturedUITouch;
    CGPoint capturedStartPoint;
}

static CGFloat screenWidth;
static CGFloat screenHeightThreshold;
bool validScreenEdgeSwiped;

+ (bool) validScreenEdgeSwiped{
    return validScreenEdgeSwiped;
}


- (instancetype)initWithTarget:(nullable id)target action:(nullable SEL)action {
    self = [super initWithTarget:target action:action];
    screenWidth = CGRectGetWidth([[UIScreen mainScreen] bounds]); // Get the screen's bounds (in points)
    screenHeightThreshold = CGRectGetHeight([[UIScreen mainScreen] bounds]) * 0.4;
    _EDGE_TOLERANCE = 10.0f;
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchDownPoint = [touch locationInView:self.view];
    
    if(touchDownPoint.y >= screenHeightThreshold){
        return;
    }
    if(self.edges & UIRectEdgeLeft){
        if(touchDownPoint.x < _EDGE_TOLERANCE){
            validScreenEdgeSwiped = true;
            capturedUITouch = touch;
            capturedStartPoint = touchDownPoint;
            self.state = UIGestureRecognizerStatePossible;
        }
    }
    if(self.edges & UIRectEdgeRight){
        if(touchDownPoint.x > screenWidth - _EDGE_TOLERANCE){
            validScreenEdgeSwiped = true;
            capturedUITouch = touch;
            capturedStartPoint = touchDownPoint;
            self.state = UIGestureRecognizerStatePossible;
        }
    }
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if([touches containsObject:capturedUITouch]){
        CGPoint endPoint = [capturedUITouch locationInView:self.view];
        CGFloat gestureDistance = fabs(endPoint.x - capturedStartPoint.x);
        
        if(endPoint.y < screenHeightThreshold){
            if(self.edges & UIRectEdgeLeft){
                if(capturedStartPoint.x < _EDGE_TOLERANCE && gestureDistance > _requiredGestureDistance) self.state = UIGestureRecognizerStateEnded;
            }
            if(self.edges & UIRectEdgeRight){
                if((capturedStartPoint.x > (screenWidth - _EDGE_TOLERANCE)) && gestureDistance > _requiredGestureDistance) self.state = UIGestureRecognizerStateEnded;
            }
        }
        validScreenEdgeSwiped = false;
    }
}

@end





