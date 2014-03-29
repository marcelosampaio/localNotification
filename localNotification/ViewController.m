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
@property int notificationAmount;

@end

@implementation ViewController

@synthesize start;
@synthesize notification,notificationAmount;

- (void)viewDidLoad
{
    [super viewDidLoad];

}


- (IBAction)startNotification:(UIButton *)sender
{
    self.notificationAmount=self.notificationAmount+1;
    notification=[[UILocalNotification alloc]init];
    notification.fireDate=[NSDate dateWithTimeIntervalSinceNow:5];
    notification.alertBody=@"This is my notification! :)";
    notification.timeZone=[NSTimeZone defaultTimeZone];
    notification.soundName=UILocalNotificationDefaultSoundName;
    notification.applicationIconBadgeNumber=notificationAmount;
    notification.repeatInterval=NSMinuteCalendarUnit;
    
    
    [[UIApplication sharedApplication]scheduleLocalNotification:notification];
    
    
    
}

- (IBAction)stopNotification:(UIButton *)sender
{
    [[UIApplication sharedApplication]cancelLocalNotification:self.notification];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
