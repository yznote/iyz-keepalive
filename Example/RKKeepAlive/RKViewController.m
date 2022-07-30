//
//  RKViewController.m
//  RKKeepAlive
//
//  Created by yuan on 07/22/2022.
//  Copyright (c) 2022 yuan. All rights reserved.
//

#import "RKViewController.h"

#import <RKKeepAlive/RKKeepAlive.h>

@interface RKViewController ()

@end

@implementation RKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self keepAlive];
    
}


-(void)keepAlive {
    
    NSNotificationCenter *notiCenter = [NSNotificationCenter defaultCenter];
    [notiCenter addObserver:self selector:@selector(appActive) name:UIApplicationDidBecomeActiveNotification object:nil];

    [[RKKeepAlive sharedKeepInstance] showLog:YES];
    [[RKKeepAlive sharedKeepInstance] startAppLifeCycleMonitor];

}

-(void)appActive {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[RKKeepAlive sharedKeepInstance] showRunTime];
    });
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
