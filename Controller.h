#import <Cocoa/Cocoa.h>
#import "codeBarView.h"

@interface Controller : NSObject
{
    IBOutlet id checkSumField;
    IBOutlet id n0Field;
    IBOutlet id n10Field;
    IBOutlet id n11Field;
    IBOutlet id n1Field;
    IBOutlet id n2Field;
    IBOutlet id n3Field;
    IBOutlet id n4Field;
    IBOutlet id n5Field;
    IBOutlet id n6Field;
    IBOutlet id n7Field;
    IBOutlet id n8Field;
    IBOutlet id n9Field;
    IBOutlet codeBarView *theView;
    IBOutlet id mainWindow;
    
    IBOutlet id createButton;
    IBOutlet id exportButton;
    
    NSMutableString *barCodeString;
}

- (IBAction)verifyEnteredNumber:(id)sender;

- (IBAction)calculateCheckSum:(id)sender;

- (IBAction)makeBarCode:(id)sender;

- (IBAction)exportBarCode:(id)sender;
- (void)sheetDidEnd:(NSWindow *)sheet returnCode:(int)returnCode contextInfo:(void *)contextInfo;

@end
