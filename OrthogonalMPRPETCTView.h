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

#import <Cocoa/Cocoa.h>
#import "OrthogonalMPRView.h"

@interface OrthogonalMPRPETCTView : OrthogonalMPRView {
	NSString	*curCLUTMenu;
}
- (void) superSetBlendingFactor:(float) f;
- (void) superFlipVertical:(id) sender;
- (void) superFlipHorizontal:(id) sender;

- (NSString*) curCLUTMenu;
- (void) setCurCLUTMenu: (NSString*) clut;

@end
