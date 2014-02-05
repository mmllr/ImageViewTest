//
//  AppDelegate.m
//  ImageViewTest
//
//  Created by Markus Müller on 06.02.14.
//  Copyright (c) 2014 Markus Müller. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (NSArray*)createImages
{
	return @[ @{@"name": @"Computer",
				@"image": [NSImage imageNamed:NSImageNameComputer]
				},
			  @{@"name": @"iCloud",
				@"image": [NSImage imageNamed:NSImageNameDotMac]
				},
			 ];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	self.images = [self createImages];

	NSDictionary *options = @{NSNullPlaceholderBindingOption: [NSImage imageNamed:NSImageNameCaution]
							  };
	[self.imageView bind:NSValueBinding
				toObject:self
			 withKeyPath:@"image"
				 options:options];
}

@end
