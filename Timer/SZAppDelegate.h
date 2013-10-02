//
//  SZAppDelegate.h
//  Timer
//
//  Created by Sergey Zhernovoy on 6/9/13.
//  Copyright (c) 2013 Sergey Zhernovoy. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MasterViewController.h"

@interface SZAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, strong) IBOutlet NSViewController *masterViewController;


@end
