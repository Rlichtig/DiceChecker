//
//  DiceCheckerViewController.h
//  DiceChecker
//
//  Created by  on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiceCheckerViewController : UIViewController{
    
    
    
    
    
    IBOutlet UIView *keypadView;
    IBOutlet UILabel *totalLabel;
}

- (void)concatenateNumberWithTotal:(NSString *)number;
- (void)updateWithNewRollValue:(int)number;


- (IBAction)zeroButtonPressed:(id)sender;
- (IBAction)oneButtonPressed:(id)sender;
- (IBAction)twoButtonPressed:(id)sender;
- (IBAction)threeButtonPressed:(id)sender;
- (IBAction)fourButtonPressed:(id)sender;
- (IBAction)fiveButtonPressed:(id)sender;
- (IBAction)sixButtonPressed:(id)sender;
- (IBAction)sevenButtonPressed:(id)sender;
- (IBAction)eightButtonPressed:(id)sender;
- (IBAction)nineButtonPressed:(id)sender;

- (IBAction)clearButtonPressed:(id)sender;
- (IBAction)confirmButtonPressed:(id)sender;










// TESTICULAR CANCER
@end
