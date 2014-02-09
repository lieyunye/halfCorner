//
//  TViewController.m
//  HalfCorner
//
//  Created by lieyunye on 2/9/14.
//  Copyright (c) 2014 lieyunye. All rights reserved.
//

#import "TViewController.h"
#import "HalfRoundCornerView.h"

@interface TViewController ()

@end

@implementation TViewController

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

    HalfRoundCornerView *halfRoundCornerView = [[HalfRoundCornerView alloc] initWithFrame:CGRectMake(100, 100, 100, 44)];
    halfRoundCornerView.fillColor = [UIColor redColor];
    halfRoundCornerView.halfRoundedCorner = HalfRoundedCornerBottomRight;
    halfRoundCornerView.cornerRadius = 5;
    [self.view addSubview:halfRoundCornerView];
    
    UIView *cornerView = [[UIView alloc] initWithFrame:CGRectMake(100, 150, 100, 44)];
    cornerView.layer.masksToBounds = YES;
    cornerView.layer.cornerRadius = 22;
    cornerView.backgroundColor = [UIColor redColor];
    [self.view addSubview:cornerView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
