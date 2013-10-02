//
//  MasterViewController.m
//  Timer
//
//  Created by Sergey Zhernovoy on 6/9/13.
//  Copyright (c) 2013 Sergey Zhernovoy. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()



@end

@implementation MasterViewController

static NSDate *timeBase;
static int timeIncrement;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.

    }
    
    
    
    return self;
}

- (void)awakeFromNib {
    
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                      target:self
                                                    selector:@selector(updateTimer:)
                                                    userInfo:nil
                                                     repeats:YES];
    timeBase = [NSDate date];
}

- (void)updateTimer:(NSTimer *)timer {
    //NSDate *date =  [NSDate date];
    
    NSDate *date = [timeBase dateByAddingTimeInterval:timeIncrement];
    
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"HH:mm:ss"];
    NSString *dateString = [format stringFromDate:date];
    [_timerString setStringValue:dateString];
    timeIncrement++;
}

- (IBAction)clearButtonPressed:(id)sender {

    NSDateComponents *dateComp = [[NSDateComponents alloc] init];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    [dateComp setHour:0];
    [dateComp setMinute:0];
    [dateComp setSecond:0];
    
    timeBase = [gregorian dateFromComponents:dateComp];

    timeIncrement = 0;
    
}

- (IBAction)currentButtonPressed:(id)sender {
    
    timeBase = [NSDate date];
    
}


@end
