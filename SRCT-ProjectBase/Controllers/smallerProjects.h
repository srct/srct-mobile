//
//  smallerProjects.h
//  SRCT-ProjectBase
//
//  Created by Abdullah Abdurrah on 3/1/14.
//  Copyright (c) 2014 Abdullah Abdurrah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "projectLinkButton.h"

@interface smallerProjects : UIViewController

@property (nonatomic) projectLinkButton *button;
@property (nonatomic) UILabel *projectTitle;

- (id) initWithFrame: (CGRect) frame;



@end
