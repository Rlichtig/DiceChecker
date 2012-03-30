//
//  DiceCheckerViewController.m
//  DiceChecker
//
//  Created by  on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DiceCheckerViewController.h"

@implementation DiceCheckerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{

    keypadView = nil;
    totalLabel = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
}


- (void)concatenateNumberWithTotal:(NSString *)number {
    
    if ([[totalLabel text] isEqualToString:@"0"]) {
        [totalLabel setText:number];
    } else {
        [totalLabel setText:[[totalLabel text] stringByAppendingString:number]];
    }
}

- (void)updateWithNewRollValue:(int)number {
    //PENIS.
    //NSLog("FML THIS SHIT SUCKS DONKEY KONGS BANANA");
    NSLog(@"%d",number);
}



#pragma mark - Keypad Button Actions
- (IBAction)zeroButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"0"];
}

- (IBAction)oneButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"1"];
}

- (IBAction)twoButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"2"];
}

- (IBAction)threeButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"3"];
}

- (IBAction)fourButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"4"];
}

- (IBAction)fiveButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"5"];
}

- (IBAction)sixButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"6"];
}

- (IBAction)sevenButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"7"];
}

- (IBAction)eightButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"8"];
}

- (IBAction)nineButtonPressed:(id)sender {
    [self concatenateNumberWithTotal:@"9"];
}

- (IBAction)clearButtonPressed:(id)sender {
    [totalLabel setText:@"0"];
}

- (IBAction)confirmButtonPressed:(id)sender {
    int total = [[totalLabel text] intValue];
    [self updateWithNewRollValue:total];
}
@end









