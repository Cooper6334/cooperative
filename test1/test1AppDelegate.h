//
//  test1AppDelegate.h
//  test1
//
//  Created by Lin Cooper on 2012/4/18.
//  Copyright 2012年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class test1ViewController;

@interface test1AppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet test1ViewController *viewController;

@end
