//
//  ViewController.m
//  dd_homework_1
//
//  Created by Сергей Тришин on 06.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void) result:(double) method{
    switch (Method) {
        case 1:
            RunningTotal=RunningTotal*SelectNumber;
            break;
        case 2:
            RunningTotal=RunningTotal/SelectNumber;
            break;
        case 3:
            RunningTotal=RunningTotal-SelectNumber;
            break;
        case 4:
            RunningTotal=RunningTotal+SelectNumber;
            break;
        case 5:
            RunningTotal=(int)RunningTotal%SelectNumber;
            break;
        case 6:
            RunningTotal=RunningTotal+SelectNumber/10;
            break;
        default:
            break;
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];
    // Do any additional setup after loading the view, typically from a nib.
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button1:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+1;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)button2:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+2;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)button3:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+3;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)button4:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+4;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)button5:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+5;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)button6:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+6;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)button7:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+7;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)button8:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+8;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)button9:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+9;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)button0:(id)sender {
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+0;
    _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
}

- (IBAction)buttonClear:(id)sender {
    Method=0;
    RunningTotal=0;
    SelectNumber=0;
    
    _screen.text =[NSString stringWithFormat:@"0"];
    
}

- (IBAction)buttonEquals:(id)sender {
    
    if (RunningTotal==0) {
        RunningTotal=SelectNumber;
    }
    else{
            [self result:Method];
    }
    
    Method=0;
    SelectNumber=0;
    if (RunningTotal-(int)RunningTotal ==0)
        _screen.text = [NSString stringWithFormat:@"%.d",(int)RunningTotal];
     else
    _screen.text = [NSString stringWithFormat:@"%.2f",RunningTotal];
}

- (IBAction)buttonTimes:(id)sender {
    if (RunningTotal==0) {
        RunningTotal=SelectNumber;
    }
    else{
            [self result:Method];
    }
    
    Method=1;
    SelectNumber=0;
}


- (IBAction)buttonDivide:(id)sender {
    if (RunningTotal==0) {
        RunningTotal=SelectNumber;
    }
    else{
            [self result:Method];
    }
    
    Method=2;
    SelectNumber=0;
}



- (IBAction)buttonSubstract:(id)sender {
    if (RunningTotal==0) {
        RunningTotal=SelectNumber;
    }
    else{
            [self result:Method];
    }
    
    Method=3;
    SelectNumber=0;
}

- (IBAction)buttonPlus:(id)sender {
    if (RunningTotal==0) {
        RunningTotal=SelectNumber;
    }
    else{
            [self result:Method];
    }
    
    Method=4;
    SelectNumber=0;
    
}
- (IBAction)buttonModulo:(id)sender {
    if (RunningTotal==0) {
        RunningTotal=SelectNumber;
    }
    else{
        [self result:Method];
    }
    
    Method=5;
    SelectNumber=0;
    
}

- (IBAction)buttonPlusMinus:(id)sender {
    if (SelectNumber ==0) {
        RunningTotal =-RunningTotal;
        if (RunningTotal-(int)RunningTotal ==0)
            _screen.text = [NSString stringWithFormat:@"%.d",(int)RunningTotal];
        else
            _screen.text = [NSString stringWithFormat:@"%.2f",RunningTotal];
    } else  {
        SelectNumber=-SelectNumber;
        _screen.text=[NSString stringWithFormat:@"%i",SelectNumber];
    }
}

- (IBAction)buttonComma:(id)sender {
_screen.text = [NSString stringWithFormat:@"Не работает"];
}

@end
