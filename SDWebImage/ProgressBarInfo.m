//
//  ProgressBarInfo.m
//  SDWebImage
//
//  Created by Konstantinos Vaggelakos on 8/23/12.
//  Copyright (c) 2012 Dailymotion. All rights reserved.
//

#import "ProgressBarInfo.h"

@implementation ProgressBarInfo

@synthesize innerColor, outerColor;
@synthesize frame;
@synthesize innerspacing;
@synthesize hidden;


- (id)init
{
    self.frame = CGRectMake(100, 100, 100, 5);
    self.innerColor = [UIColor lightGrayColor];
    self.outerColor = [UIColor grayColor];
    self.innerspacing = 1.5;
    self.hidden = NO;
    return self;
}

@end
