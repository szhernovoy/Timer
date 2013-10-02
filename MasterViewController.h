//
//  MasterViewController.h
//  Timer
//
//  Created by Sergey Zhernovoy on 6/9/13.
//  Copyright (c) 2013 Sergey Zhernovoy. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MasterViewController : NSViewController

@property (strong) IBOutlet NSTextField *timerString;

- (IBAction)clearButtonPressed:(id)sender;
- (IBAction)currentButtonPressed:(id)sender;

@end
