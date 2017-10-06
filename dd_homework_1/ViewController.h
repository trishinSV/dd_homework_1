//
//  ViewController.h
//  dd_homework_1
//
//  Created by Сергей Тришин on 06.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
int Method;
int SelectNumber;
double SelectFloatNumber;
double RunningTotal;

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *screen;

- (void) result:(double)method;

- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)button4:(id)sender;
- (IBAction)button5:(id)sender;
- (IBAction)button6:(id)sender;
- (IBAction)button7:(id)sender;
- (IBAction)button8:(id)sender;
- (IBAction)button9:(id)sender;
- (IBAction)button0:(id)sender;
- (IBAction)buttonClear:(id)sender;
- (IBAction)buttonEquals:(id)sender;
- (IBAction)buttonPlus:(id)sender;
- (IBAction)buttonSubstract:(id)sender;
- (IBAction)buttonTimes:(id)sender;
- (IBAction)buttonDivide:(id)sender;
- (IBAction)buttonModulo:(id)sender;
- (IBAction)buttonPlusMinus:(id)sender;
- (IBAction)buttonComma:(id)sender;


@end

