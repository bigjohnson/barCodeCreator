//
//  codeBarView.h
//  barCodeCreator
//
//  Created by Papi on Mon Feb 04 2002.
//  This is Public domain software, feel free to add improvements or to include it in your projects.
//

#import "codeBarView.h"

@implementation codeBarView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        barCodePath = [[NSBezierPath bezierPath] retain];
        
        BCString = @"               ";
		font = [NSFont fontWithName:@"Monaco" size: 22.5];
        
        //barCodeText = [[NSTextView alloc] initWithFrame:NSMakeRect(128, 96, 112, 16)];
        theRect = frame;
    }
    return self;
}

- (void)drawRect:(NSRect)rect
{
	NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
	
    [[NSColor whiteColor] set];
    NSRectFill(rect);
    
    [[NSColor blackColor] set];
    [barCodePath setLineWidth:2];
    [barCodePath stroke];
    
    [attrs setObject:font forKey: NSFontAttributeName];
    [BCString drawAtPoint:NSMakePoint(132,85) withAttributes:attrs];
}

- (void)resetPath
{
    [barCodePath release];
    barCodePath = [[NSBezierPath bezierPath] retain];
}

- (void)drawSeparator:(int)position
{
    NSPoint aPoint;
    if (position == 1)
        aPoint = NSMakePoint(148, 96);
    else if (position == 2)
        aPoint = NSMakePoint(142 + 14 * 7, 96);
    else if (position == 3)
        aPoint = NSMakePoint(136 + 14 * 14, 96);
    
    aPoint.x += 4;
    [barCodePath moveToPoint:aPoint];
    aPoint.y += 174;
    [barCodePath lineToPoint:aPoint];
    
    aPoint.x += 4;
    [barCodePath moveToPoint:aPoint];
    aPoint.y -= 174;
    [barCodePath lineToPoint:aPoint];
    
    [self setNeedsDisplay:YES];
}

- (void)drawCodeLine:(int)theCodeLine withValue:(int)value atPosition:(int)position
{
    NSPoint aPoint = NSMakePoint(142 + 14 * position, 112);
    
        if (theCodeLine == 0) // Code A
        {
                if (value == 0) // 0001101
                {
                    aPoint.x += 8;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y +=158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -=158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y +=158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 1) // 0011001
                {
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 2) // 0010011
                {
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 3) // 0111101
                {
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 4) // 0100011
                {
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 8;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 5) // 0110001
                {
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 8;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 6) // 0101111
                {
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 7) // 0111011
                {
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 8) // 0110111
                {
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 9) // 0001011
                {
                    aPoint.x += 8;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                }
        }
        else if (theCodeLine == 1) // Code B
        {
                if (value == 0) // 0100111
                {
                    aPoint.x +=4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y +=158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -=158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x +=2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y +=158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -=158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 1) // 0110011
                {
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 2) // 0011011
                {
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 3) // 0100001
                {
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 10;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 4) // 0011101
                {
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 5) // 0111001
                {
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 6) // 0000101
                {
                    aPoint.x += 10;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 7) // 0010001
                {
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 8;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 8) // 0001001
                {
                    aPoint.x += 8;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                }
                else if (value == 9) // 0010111
                {
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
            }
        }
        else if (theCodeLine == 2) // Code C
        {
            aPoint = NSMakePoint(138 + 14 * position, 112);
                if (value == 0) // 1110010
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y +=158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -=158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x +=2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y +=158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -=158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                }
                else if (value == 1) // 1100110
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                }
                else if (value == 2) // 1101100
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                }
                else if (value == 3) // 1000010
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 10;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                }
                else if (value == 4) // 1011100
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                }
                else if (value == 5) // 1001110
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                }
                else if (value == 6) // 1010000
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 8;
                }
                else if (value == 7) // 1000100
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 8;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                }
                else if (value == 8) // 1001000
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 6;
                }
                else if (value == 9) // 1110100
                {
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 2;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y += 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                    [barCodePath moveToPoint:aPoint];
                    aPoint.y -= 158;
                    [barCodePath lineToPoint:aPoint];
                    
                    aPoint.x += 4;
                }
        }
    [self setNeedsDisplay:YES];
}

- (void)drawText:(NSString *)theString
{
    [BCString autorelease];
	BCString = [theString copy];
    
    [self setNeedsDisplay:YES];
}

- (NSRect)getRect
{
    return theRect;
}

@end
