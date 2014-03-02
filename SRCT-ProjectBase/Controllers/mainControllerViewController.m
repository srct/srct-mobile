//
//  mainControllerViewController.m
//  SRCT-ProjectBase
//
//  Created by Abdullah Abdurrah on 3/1/14.
//  Copyright (c) 2014 Abdullah Abdurrah. All rights reserved.
//

#import "mainControllerViewController.h"

@interface mainControllerViewController ()

@end

@implementation mainControllerViewController


@synthesize projects;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.projects = [[NSMutableArray alloc] init];
    
    
    
    [self.projects addObject:[[smallerProjects alloc] initWithFrame:CGRectMake(10, 100, 90, 90)]];
    [self.projects addObject:[[smallerProjects alloc] initWithFrame:CGRectMake(10, 200, 90, 90)]];
    [self.projects addObject:[[smallerProjects alloc] initWithFrame:CGRectMake(10, 300, 90, 90)]];
    
    [self.projects addObject:[[smallerProjects alloc] initWithFrame:CGRectMake(110, 100, 90, 90)]];
    [self.projects addObject:[[smallerProjects alloc] initWithFrame:CGRectMake(110, 200, 90, 90)]];
    [self.projects addObject:[[smallerProjects alloc] initWithFrame:CGRectMake(110, 300, 90, 90)]];
    
    [self.projects addObject:[[smallerProjects alloc] initWithFrame:CGRectMake(210, 100, 90, 90)]];
    [self.projects addObject:[[smallerProjects alloc] initWithFrame:CGRectMake(210, 200, 90, 90)]];
    [self.projects addObject:[[smallerProjects alloc] initWithFrame:CGRectMake(210, 300, 90, 90)]];
    
    for (smallerProjects *stuff in self.projects) {
        [self addChildViewController:stuff];
        [self.view addSubview:stuff.view];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
