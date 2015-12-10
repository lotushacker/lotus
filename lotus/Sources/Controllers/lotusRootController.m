//
//  lotusRootController.m
//  lotus
//
//  Created by WenBi on 13-4-3.
//  Copyright (c) 2013年 Alipay. All rights reserved.
//

#import "lotusRootController.h"

@implementation lotusRootController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    return self;
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	[self performSelector:@selector(createSubviews) withObject:nil afterDelay:0.0];
}

- (void)createSubviews
{
	UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
	label.text = @"lotus root view controller";
	label.textAlignment = NSTextAlignmentCenter;
	[self.view addSubview:label];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame = CGRectMake(10, CGRectGetHeight(self.view.frame) - 60, 300, 40);
	[button setTitle:@"Next" forState:UIControlStateNormal];
	[button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];
}

- (void)buttonClicked:(id)sender
{
}

@end
