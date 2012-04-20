//
//  DragView.m
//  test1
//
//  Created by Lin Cooper on 2012/4/18.
//  Copyright 2012年 NTU. All rights reserved.
//

#import "DragView.h"


@implementation DragView

-(void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event{

    NSString *mgraph[8]={@"m0.png",@"m1.png",@"m2.png",@"m3.png",@"m4.png",@"m5.png",@"m6.png",@"m7.png"};
    NSString *dgraph[8]={@"m0.png",@"d1.png",@"d2.png",@"d3.png",@"d4.png",@"d5.png",@"d6.png",@"d7.png"};
    if(num==0){
        UIImage *newImage = [UIImage imageNamed:mgraph[num]];
        [self setImage:newImage];    
        return;
    }
    UIImage *newImage = [UIImage imageNamed:mgraph[num]];
    [temp setImage:newImage];

    int r=rand()%7+1;
    num=r;
    UIImage *newDImage = [UIImage imageNamed:dgraph[r]];
    [self setImage:newDImage];
    
    printf("%d\n",num);
    
    //   }
    //   else{
    
    //   }
    
    
}
-(void) setNum:(int)n{
    num=n;
    
}

-(void) setTmp:(DragView*)u{
    temp=u;
 

}







@end
