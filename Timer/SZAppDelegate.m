//
//  SZAppDelegate.m
//  Timer
//
//  Created by Sergey Zhernovoy on 6/9/13.
//  Copyright (c) 2013 Sergey Zhernovoy. All rights reserved.
//

#import "SZAppDelegate.h"

@implementation SZAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    
    NSRect wFrame = self.window.frame;
    wFrame.size.height = 130.0f;
    wFrame.size.width = 250.0f;
    [self.window setFrame:wFrame display:YES];
    
    
    
    [self.window.contentView addSubview: self.masterViewController.view];
    self.masterViewController.view.frame = ((NSView *)self.window.contentView).bounds;
}

- (BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)application
{
    return YES;
}

@end
