//
//  DragView.h
//  test1
//
//  Created by Lin Cooper on 2012/4/18.
//  Copyright 2012年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DragView : UIImageView {
    CGPoint startLocation;
    int num;
    DragView* temp;
    
}
-(void) setNum:(int)n;
-(void) setTmp:(DragView*)u;
-(void) setImg:(int) num;
@end
