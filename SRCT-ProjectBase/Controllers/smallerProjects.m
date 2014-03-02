//
//  smallerProjects.m
//  SRCT-ProjectBase
//
//  Created by Abdullah Abdurrah on 3/1/14.
//  Copyright (c) 2014 Abdullah Abdurrah. All rights reserved.
//

#import "smallerProjects.h"

@interface smallerProjects ()

@end

@implementation smallerProjects

@synthesize button, projectTitle;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (id) initWithFrame:(CGRect)frame{
    self = [super init];
    if (self){
        [self setView:[[UIView alloc] initWithFrame:frame]];
        NSLog(@"HELLO WORLD!");
        
        
        [self viewDidLoad];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
	// Do any additional setup after loading the view.
    button = [[projectLinkButton alloc] initWithPoint:CGPointMake(
                                (self.view.frame.size.width - 50)/2,
                                0)];
    
    projectTitle = [[UILabel alloc] initWithFrame:CGRectMake(
                    0,
                    0 + self.button.frame.size.height,
                    self.view.frame.size.width,
                    self.view.frame.size.height- self.button.frame.size.height)];
    [self.projectTitle setText:@"Temp Project"];
    [self.projectTitle sizeToFit];
    
    [self.view addSubview:button];
    [self.view addSubview:projectTitle];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
