//
//  CustomEdgeSlideGestureRecognizer.h
//  Moonlight-ZWM
//
//  Created by ZWM on 2024/4/30.
//  Copyright © 2024 Moonlight Game Streaming Project. All rights reserved.
//

#ifndef CustomEdgeSlideGestureRecognizer_h
#define CustomEdgeSlideGestureRecognizer_h
// CustomEdgeSlideGestureRecognizer.h
#import <UIKit/UIKit.h>

@interface CustomEdgeSlideGestureRecognizer : UIGestureRecognizer
+ (bool) validScreenEdgeSwiped;

@property (nonatomic, assign) UIRectEdge edges; // Specify the edge(s) you want to recognize the swipe gesture on
@property (nonatomic, assign) CGFloat requiredGestureDistance; // Distance from the edge to start recognizing the gesture
@property (nonatomic, assign) CGFloat EDGE_TOLERANCE;

@end
#endif /* CustomEdgeSlideGestureRecognizer_h */
