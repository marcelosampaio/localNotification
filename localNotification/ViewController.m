//
//  ViewController.m
//  localNotification
//
//  Created by Marcelo Sampaio on 3/29/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UILocalNotification *notification;

@end

@implementation ViewController

@synthesize start;
@synthesize notification;

- (void)viewDidLoad
{
    [super viewDidLoad];

}


- (IBAction)startNotification:(UIButton *)sender
{
    notification=[[UILocalNotification alloc]init];
    notification.fireDate=[NSDate dateWithTimeIntervalSinceNow:5];
    notification.alertBody=@"Time to have a beer";
    notification.timeZone=[NSTimeZone defaultTimeZone];
    notification.soundName=UILocalNotificationDefaultSoundName;
    notification.applicationIconBadgeNumber=1;
//    notification.repeatInterval=NSMinuteCalendarUnit;
    
    
    [[UIApplication sharedApplication]scheduleLocalNotification:notification];
    
    
    
}

- (IBAction)stopNotification:(UIButton *)sender
{
//    [[UIApplication sharedApplication]cancelLocalNotification:self.notification];
    [[UIApplication sharedApplication]cancelAllLocalNotifications];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
