//
//  NVAppDelegate.h
//  PopoverExample
//
//  Created by Vladimir Stanciu on 10/24/11.
//  Copyright (c) 2011 Sistronic. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NVAppDelegate : NSObject <NSApplicationDelegate, NSPopoverDelegate> {
    NSButton *popoverTriggerButton;
    NSPopover *popover;
    NSWindow *popoverWindow;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSButton *popoverTriggerButton;
@property (assign) IBOutlet NSPopover *popover;
@property (assign) IBOutlet NSWindow *popoverWindow;

- (IBAction)togglePopover:(id)sender;

@end
