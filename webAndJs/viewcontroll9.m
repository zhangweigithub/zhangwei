//
//  viewcontroll9.m
//  webAndJs
//
//  Created by zhangwei on 16/4/21.
//  Copyright © 2016年 zhangwei. All rights reserved.
//

#import "viewcontroll9.h"

@implementation viewcontroll9
-(void)viewDidLoad{
    [super viewDidLoad];
    void(^printBlock)()=^{
        NSLog(@"no number");
    };
    printBlock();
    
    int i=7;
    int(^myBlock)(int);
    myBlock=^(int x){
        return x*5;
    };
    
    int(^myblock)(int)=^(int x){
        return x*8;
    };
    NSLog(@"%d,%d",myBlock(i),myblock(i));
}
@end
