//
//  AppDelegate.h
//  ImageViewTest
//
//  Created by Markus Müller on 06.02.14.
//  Copyright (c) 2014 Markus Müller. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSImageView *imageView;
@property (strong) NSImage *image;
@property (strong) NSArray *images;

@end
