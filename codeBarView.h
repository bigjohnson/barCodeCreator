//
//  codeBarView.h
//  barCodeCreator
//
//  Created by Papi on Mon Feb 04 2002.
//  This is Public domain software, feel free to add improvements or to include it in your projects.
//

#import <AppKit/AppKit.h>

@interface codeBarView : NSView
{
    NSBezierPath *barCodePath;
    
	NSString *BCString;
	NSFont   *font;
    
    NSRect theRect;
}

- (void)resetPath;

- (void)drawSeparator:(int)position;
- (void)drawCodeLine:(int)theCodeLine withValue:(int)value atPosition:(int)position;

- (void)drawText:(NSString *)theString;

- (NSRect)getRect;

@end
