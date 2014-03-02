//
//  projectLinkButton.m
//  SRCT-ProjectBase
//
//  Created by Abdullah Abdurrah on 3/1/14.
//  Copyright (c) 2014 Abdullah Abdurrah. All rights reserved.
//

#import "projectLinkButton.h"

@implementation projectLinkButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setDefaults];
    }
    return self;
}

- (id)initWithPoint: (CGPoint) point{
    self = [super initWithFrame:CGRectMake(point.x, point.y, 50, 50)];
    if (self){
        [self setDefaults];
    }
    return self;
}


- (void) setDefaults{
    [self setImage:[UIImage imageNamed:@"srct_sticker.png"] forState:UIControlStateNormal];
    [self setTitle:@"erg" forState:UIControlStateNormal];
    //[self setBackgroundColor:[UIColor blackColor]];
    
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
