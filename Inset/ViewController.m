//
//  ViewController.m
//  insetTester
//
//  Created by Dhanush Balachandran on 5/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize right;
@synthesize left;
@synthesize top;
@synthesize bottom;
@synthesize insetLabel;
@synthesize insetButton;
@synthesize buttonSizeLabel;
@synthesize resizeText;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
        
    NSString * buttonSize = [NSString stringWithFormat:@"Button Size \nLength: %d,  Height:%d",(int)insetButton.frame.size.width, (int)insetButton.frame.size.height ];
    
    
    buttonSizeLabel.text = buttonSize;
    
    resizeText.text = @"";
    
    insetLabel.text = [NSString stringWithFormat:@"Top: %d, Bottom: %d \n Left: %d, Right: %d", (int)top.value, (int)bottom.value, (int)left.value, (int)right.value];
    
    [insetButton setBackgroundImage: [[UIImage imageNamed:@"TestButtonImage"] resizableImageWithCapInsets:UIEdgeInsetsMake(top.value, left.value, bottom.value, right.value)] forState:UIControlStateNormal];
}

- (void)viewDidUnload
{
    [self setTop:nil];
    [self setRight:nil];
    [self setLeft:nil];
    [self setBottom:nil];
    [self setInsetLabel:nil];
    [self setInsetButton:nil];
    [self setTop:nil];
    [self setRight:nil];
    [self setLeft:nil];
    [self setButtonSizeLabel:nil];
    [self setResizeText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
- (IBAction)rtStepperChanged:(id)sender {
    [self valuechanged];
}
- (IBAction)btmStepperChanged:(id)sender {
        [self valuechanged];
}
- (IBAction)topStepperChanged:(id)sender {
        [self valuechanged];
}
- (IBAction)ltStepperChanged:(id)sender {
        [self valuechanged];
}


- (void) valuechanged
{
    insetLabel.text = [NSString stringWithFormat:@"Top: %d, Bottom: %d \n Left: %d, Right: %d", (int)top.value, (int)bottom.value, (int)left.value, (int)right.value];
    
    [insetButton setBackgroundImage: [[UIImage imageNamed:@"TestButtonImage"] resizableImageWithCapInsets:UIEdgeInsetsMake(top.value, left.value, bottom.value, right.value)] forState:UIControlStateNormal];
    
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
