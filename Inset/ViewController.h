//
//  ViewController.h
//  insetTester
//
//  Created by Dhanush Balachandran on 5/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIStepper *top;
@property (weak, nonatomic) IBOutlet UIStepper *right;
@property (weak, nonatomic) IBOutlet UIStepper *left;
@property (weak, nonatomic) IBOutlet UIStepper *bottom;
@property (weak, nonatomic) IBOutlet UILabel *insetLabel;
@property (weak, nonatomic) IBOutlet UIButton *insetButton;
@property (weak, nonatomic) IBOutlet UILabel *buttonSizeLabel;
@property (weak, nonatomic) IBOutlet UILabel *resizeText;

@end
