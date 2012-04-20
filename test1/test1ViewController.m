//
//  test1ViewController.m
//  test1
//
//  Created by Lin Cooper on 2012/4/18.
//  Copyright 2012年 NTU. All rights reserved.
//

#import "test1ViewController.h"
#import "DragView.h"
@implementation test1ViewController

CGPoint randomPoint() {
    return CGPointMake(random()%256,random()%396);
}

- (void)dealloc
{
    [contentView release];
    [super dealloc];
}

-(void)loadView{
    CGRect apprect=[[UIScreen mainScreen] applicationFrame];
    contentView=[[UIView alloc]initWithFrame:apprect];
    contentView.backgroundColor=[UIColor blackColor];
    self.view=contentView;
    [contentView release];    
    
    CGRect dragRect=CGRectMake(0.0f, 0.0f, 320.0f, 480.0f);
    dragRect.origin=CGPointMake(0,0);
    DragView *dragger=[[DragView alloc]initWithFrame:dragRect];
    [dragger setNum:0]; 
    [dragger setUserInteractionEnabled:YES];
    NSString *whichFlower=@"m0.png";
    [dragger setImage:[UIImage imageNamed:whichFlower]];
    [contentView addSubview:dragger];
    [dragger release];
    
    CGRect dragRect1=CGRectMake(0.0f, 0.0f, 135.0f, 135.0f);
    dragRect1.origin=CGPointMake(0,345);
    DragView *dragger1=[[DragView alloc]initWithFrame:dragRect1];
    [dragger1 setNum:1]; 
    [dragger1 setTmp: dragger];
    [dragger1 setUserInteractionEnabled:YES];
    NSString *whichFlower1=@"d1.png";
    [dragger1 setImage:[UIImage imageNamed:whichFlower1]];
    [contentView addSubview:dragger1];
    [dragger1 release];
    
    CGRect dragRect2=CGRectMake(0.0f, 0.0f, 135.0f, 135.0f);
    dragRect2.origin=CGPointMake(180,345);
    DragView *dragger2=[[DragView alloc]initWithFrame:dragRect2];
    [dragger2 setNum:2]; 
    [dragger2 setTmp: dragger];
    [dragger2 setUserInteractionEnabled:YES];
    NSString *whichFlower2=@"d2.png";
    [dragger2 setImage:[UIImage imageNamed:whichFlower2]];
    [contentView addSubview:dragger2];
    [dragger2 release];
    /*
     for(int i=0;i<3;i++){
     CGRect dragRect=CGRectMake(0.0f, 0.0f, 64.0f, 64.0f);
     dragRect.origin=randomPoint();
     DragView *dragger=[[DragView alloc]initWithFrame:dragRect];
     [dragger setNum:i];
     [dragger setTmp:contentView];
     [dragger setUserInteractionEnabled:YES];
     
     NSString *whichFlower=@"asd.png";
     [dragger setImage:[UIImage imageNamed:whichFlower]];
     
     
     [contentView addSubview:dragger];
     [dragger release];
     }
     */
}

@end
