#import "Controller.h"
#define AS(A,B)    [(A) stringByAppendingString:(B)]

@implementation Controller

- (IBAction)verifyEnteredNumber:(id)sender
{
	 NSScanner *sc = [NSScanner scannerWithString: [sender stringValue]];
	 
	if ( [sc scanInt:NULL] ) {
		[sender setStringValue:[[sender stringValue] substringWithRange:NSMakeRange( 0, 1 )]];
	} else {
		[sender setStringValue:@""];
	}
	
	NSString *tutti = [ n0Field stringValue ];
	tutti = [tutti stringByAppendingString:[ n1Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n2Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n3Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n4Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n5Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n6Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n7Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n8Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n9Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n10Field stringValue ]];
	tutti = [tutti stringByAppendingString:[ n11Field stringValue ]];
	
	if ( [tutti length] == 12 ) {
		//[createButton setEnabled:TRUE];
		[self calculateCheckSum:sender];
		[self makeBarCode:sender];
	} else {
		//[createButton setEnabled:FALSE];
		[checkSumField setStringValue:@""];
	}
	
	//if ( 
	
}

- (IBAction)calculateCheckSum:(id)sender
{
    int A,B,C = 0;
    
//    [self verifyEnteredNumber:sender];
    
    A = [n0Field intValue];
    A += [n2Field intValue];
    A += [n4Field intValue];
    A += [n6Field intValue];
    A += [n8Field intValue];
    A += [n10Field intValue];
    
    B = [n1Field intValue];
    B += [n3Field intValue];
    B += [n5Field intValue];
    B += [n7Field intValue];
    B += [n9Field intValue];
    B += [n11Field intValue];
    B = B * 3;
    
    C = (A + B);
    
    while (C >= 10)
    {
        C -= 10;
    }
    
    if (C != 0)
    {
        C = (10 - C);
    }
    
    [checkSumField setIntValue:C];
	//[checkSumField setEditable:FALSE];
    
//	[createButton setEnabled:TRUE];
//  [exportButton setEnabled:TRUE];
}

- (IBAction)makeBarCode:(id)sender
{
    //[self calculateCheckSum:sender];
	
	int i = 0;
    barCodeString = [NSMutableString stringWithCapacity:16];
    
    [theView resetPath];
    
    [theView drawSeparator:1]; i++;
    
    //switch ( [n0Field intValue] ) :
    //{
        if ([n0Field intValue] == 0) // AAAAAA
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n6Field intValue] atPosition:i]; i++;
        }
        else if ([n0Field intValue] == 1) // AABABB
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n6Field intValue] atPosition:i]; i++;
        }
        else if ([n0Field intValue] == 2) // AABBAB
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n6Field intValue] atPosition:i]; i++;
        }
        else if ([n0Field intValue] == 3) // AABBBA
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n6Field intValue] atPosition:i]; i++;
        }
        else if ([n0Field intValue] == 4) // AABBBA
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n6Field intValue] atPosition:i]; i++;
        }
        else if ([n0Field intValue] == 5) // ABBAAB
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n6Field intValue] atPosition:i]; i++;
        }
        else if ([n0Field intValue] == 6) // ABBBAA
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n6Field intValue] atPosition:i]; i++;
        }
        else if ([n0Field intValue] == 7) // ABABAB
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n6Field intValue] atPosition:i]; i++;
        }
        else if ([n0Field intValue] == 8) // ABABBA
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n6Field intValue] atPosition:i]; i++;
        }
        else if ([n0Field intValue] == 9) // ABBABA
        {
            [theView drawCodeLine:0 withValue:[n1Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n2Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n3Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n4Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:1 withValue:[n5Field intValue] atPosition:i]; i++;
            [theView drawCodeLine:0 withValue:[n6Field intValue] atPosition:i]; i++;
        }
		[exportButton setEnabled:TRUE];
    //}
    
    [theView drawSeparator:2]; i++;
    
    [theView drawCodeLine:2 withValue:[n7Field intValue] atPosition:i]; i++;
    [theView drawCodeLine:2 withValue:[n8Field intValue] atPosition:i]; i++;
    [theView drawCodeLine:2 withValue:[n9Field intValue] atPosition:i]; i++;
    [theView drawCodeLine:2 withValue:[n10Field intValue] atPosition:i]; i++;
    [theView drawCodeLine:2 withValue:[n11Field intValue] atPosition:i]; i++;
    [theView drawCodeLine:2 withValue:[checkSumField intValue] atPosition:i]; i++;
    
    [theView drawSeparator:3];
    
    // Now let's add the number in text in the view.
    
    [barCodeString appendString:[n0Field stringValue]];
    [barCodeString appendString:@" "];
    
    [barCodeString appendString:[n1Field stringValue]];
    [barCodeString appendString:[n2Field stringValue]];
    [barCodeString appendString:[n3Field stringValue]];
    [barCodeString appendString:[n4Field stringValue]];
    [barCodeString appendString:[n5Field stringValue]];
    [barCodeString appendString:[n6Field stringValue]];
    [barCodeString appendString:@" "];
    
    [barCodeString appendString:[n7Field stringValue]];
    [barCodeString appendString:[n8Field stringValue]];
    [barCodeString appendString:[n9Field stringValue]];
    [barCodeString appendString:[n10Field stringValue]];
    [barCodeString appendString:[n11Field stringValue]];
    [barCodeString appendString:[checkSumField stringValue]];
    
    [theView drawText:barCodeString];
	//[checkSumField setIntValue:2];
	//[checkSumField setEditable:FALSE];
}

- (IBAction)exportBarCode:(id)sender
{
    NSString *title = @"Export";
    NSString *defaultButton = @"EPS";
    NSString *alternateButton = @"PDF";
    NSString *otherButton = NULL;
    NSString *message = @"What format do you want you bar code to be saved?";
    
    NSBeginAlertSheet(title, defaultButton, alternateButton, otherButton, mainWindow, self, @selector(sheetDidEnd:returnCode:contextInfo:), nil, nil, message);
}

- (void)sheetDidEnd:(NSWindow *)sheet returnCode:(int)returnCode contextInfo:(void *)contextInfo
{
    int panelResult;
    NSData *data;
    NSSavePanel *sPanel = [NSSavePanel savePanel];
    
    if (returnCode == NSAlertDefaultReturn)
    {
        [sPanel setRequiredFileType:@"eps"];
        data = [theView dataWithEPSInsideRect:[theView getRect]];
    }
    else
    {
        [sPanel setRequiredFileType:@"pdf"];
        data = [theView dataWithPDFInsideRect:[theView getRect]];
    }
    
    panelResult = [sPanel runModalForDirectory:NSHomeDirectory() file:@""];
    
    if (panelResult == NSOKButton)
    {
        if (![data writeToFile:[sPanel filename] atomically:YES])
            NSBeep();
    }
}
	
@end
