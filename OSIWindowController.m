//
//  OSIWindowController.m
//  OsiriX
//
//  Created by Lance Pysher on 12/11/06.
/*=========================================================================
  Program:   OsiriX

  Copyright (c) OsiriX Team
  All rights reserved.
  Distributed under GNU - GPL
  
  See http://www.osirix-viewer.com/copyright.html for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.
=========================================================================*/

#import "OSIWindowController.h"
#import "WindowLayoutManager.h"

@implementation OSIWindowController

- (id)initWithWindowNibName:(NSString *)windowNibName{
	if (self = [super initWithWindowNibName:(NSString *)windowNibName])
	{
		// Register with WindowLayoutManager
		[[WindowLayoutManager sharedWindowLayoutManager] registerWindowController:self];
	//	NSLog(@"Register Window: %@", NSStringFromClass([self class])); 
	 // do what OsiriX needs to do for window Controllers
	 
	}
	return self;
}

- (void)dealloc{
	[super dealloc];
}

- (void) addToUndoQueue:(NSString*) what
{
	NSLog( @"OSIWindowController addToUndoQueue");
}

- (IBAction) redo:(id) sender
{
	NSLog( @"OSIWindowController redo");
}

- (IBAction) undo:(id) sender
{
	NSLog( @"OSIWindowController undo");
}

- (NSMutableArray*) pixList{
	// let subclasses handle it for now
	return nil;
}

- (void)windowWillClose:(NSNotification *)notification{
	[[WindowLayoutManager sharedWindowLayoutManager] unregisterWindowController:self];
}

- (int)blendingType{
	return _blendingType;
}

#pragma mark-
#pragma mark current Core Data Objects
- (NSManagedObject *)currentStudy{
	return nil;
}
- (NSManagedObject *)currentSeries{
	return nil;
}
- (NSManagedObject *)currentImage{
	return nil;
}

-(float)curWW{
	return 0.0;
}

-(float)curWL{
	return 0.0;
}
	

@end
