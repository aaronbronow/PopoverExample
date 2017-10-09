//
//  NVAppDelegate.m
//  PopoverExample
//
//  Created by Vladimir Stanciu on 10/24/11.
//  Copyright (c) 2011 Sistronic. All rights reserved.
//

#import "NVAppDelegate.h"

@implementation NVAppDelegate

@synthesize window = _window;
@synthesize popoverTriggerButton;
@synthesize popover;
@synthesize popoverWindow;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (BOOL)buttonIsPressed
{
    return self.popoverTriggerButton.intValue == 1;
}

- (IBAction)togglePopover:(id)sender
{
    if (self.buttonIsPressed) {
        [self.popover showRelativeToRect:[popoverTriggerButton bounds] ofView:popoverTriggerButton preferredEdge:NSMaxYEdge];
    } else {
        [self.popover close];
    }
}

- (NSWindow *)detachableWindowForPopover:(NSPopover *)popover
{
    return self.popoverWindow;
}

- (void)dealloc
{
    [popoverTriggerButton release];
    [popover release];
    [popoverWindow release];
    [super dealloc];
}

@end
