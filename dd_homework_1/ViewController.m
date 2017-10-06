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
            RunningTotal=(int)RunningTotal%(int)SelectNumber;
            break;
        case 6:
            RunningTotal=RunningTotal+SelectNumber/10;
            break;
        default:
            break;
    }
}
- (void) printSelectNumber{
    switch (counter) {
        case 0:
            _screen.text=[NSString stringWithFormat:@"%d",(int)SelectNumber];
            break;
        case 1:
            _screen.text=[NSString stringWithFormat:@"%.1f",SelectNumber];
            break;
            
        case 2:
            _screen.text=[NSString stringWithFormat:@"%.2f",SelectNumber];
            break;
        case 3:
            _screen.text=[NSString stringWithFormat:@"%.3f",SelectNumber];
            break;
        case 4:
            _screen.text=[NSString stringWithFormat:@"%.4f",SelectNumber];
            break;
        case 5:
            _screen.text=[NSString stringWithFormat:@"%.5f",SelectNumber];
            break;
        case 6:
            _screen.text=[NSString stringWithFormat:@"%.6f",SelectNumber];
            break;
        case 7:
            _screen.text=[NSString stringWithFormat:@"%.7f",SelectNumber];
            break;
        case 8:
            _screen.text=[NSString stringWithFormat:@"%.8f",SelectNumber];
            break;
        default:
            _screen.text=[NSString stringWithFormat:@"%f",SelectNumber];
            
            break;
    }
    
}
- (void) printResult{
    
    switch (counterMax) {
        case 0:
            if (RunningTotal - (int)RunningTotal == 0) {
                _screen.text=[NSString stringWithFormat:@"%d",(int)RunningTotal];
            } else
            _screen.text=[NSString stringWithFormat:@"%f",RunningTotal];
            break;
        case 1:
            _screen.text=[NSString stringWithFormat:@"%.1f",RunningTotal];
            break;
            
        case 2:
            _screen.text=[NSString stringWithFormat:@"%.2f",RunningTotal];
            break;
        case 3:
            _screen.text=[NSString stringWithFormat:@"%.3f",RunningTotal];
            break;
        case 4:
            _screen.text=[NSString stringWithFormat:@"%.4f",RunningTotal];
            break;
        case 5:
            _screen.text=[NSString stringWithFormat:@"%.5f",RunningTotal];
            break;
        case 6:
            _screen.text=[NSString stringWithFormat:@"%.6f",RunningTotal];
            break;
        case 7:
            _screen.text=[NSString stringWithFormat:@"%.7f",RunningTotal];
            break;
        case 8:
            _screen.text=[NSString stringWithFormat:@"%.8f",RunningTotal];
            break;
        default:
            _screen.text=[NSString stringWithFormat:@"%f",RunningTotal];
           
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

    if(isFloat){
        SelectNumber=SelectNumber+pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10+1;
    }
    [self printSelectNumber];
   // _screen.text=[NSString stringWithFormat:@"%f",SelectNumber];
}

- (IBAction)button2:(id)sender {
    
    if(isFloat){
        SelectNumber=SelectNumber+2*pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
        SelectNumber=SelectNumber+2;
    }
    [self printSelectNumber];
       // _screen.text=[NSString stringWithFormat:@"%f",SelectNumber];
}

- (IBAction)button3:(id)sender {
    if(isFloat){
        SelectNumber=SelectNumber+3*pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
        SelectNumber=SelectNumber+3;
    }
    [self printSelectNumber];
}

- (IBAction)button4:(id)sender {
    if(isFloat){
        SelectNumber=SelectNumber+4*pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
        SelectNumber=SelectNumber+4;
    }
    [self printSelectNumber];
}

- (IBAction)button5:(id)sender {
    if(isFloat){
        SelectNumber=SelectNumber+5*pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
        SelectNumber=SelectNumber+5;
    }
    [self printSelectNumber];
}

- (IBAction)button6:(id)sender {
    if(isFloat){
        SelectNumber=SelectNumber+6*pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
        SelectNumber=SelectNumber+6;
    }
    [self printSelectNumber];
}

- (IBAction)button7:(id)sender {
    if(isFloat){
        SelectNumber=SelectNumber+7*pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
        SelectNumber=SelectNumber+7;
    }
    [self printSelectNumber];
}

- (IBAction)button8:(id)sender {
    if(isFloat){
        SelectNumber=SelectNumber+8*pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
        SelectNumber=SelectNumber+8;
    }
    [self printSelectNumber];
}

- (IBAction)button9:(id)sender {
    if(isFloat){
        SelectNumber=SelectNumber+9*pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
        SelectNumber=SelectNumber+9;
    }
    [self printSelectNumber];
}

- (IBAction)button0:(id)sender {
    if(isFloat){
      //  SelectNumber=SelectNumber+0*pow(10, -(counter+1));
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
      //  SelectNumber=SelectNumber+2;
    }
    [self printSelectNumber];
}

- (IBAction)buttonClear:(id)sender {
    Method=0;
    RunningTotal=0;
    SelectNumber=0;
    counterMax=0;
    counter=0;
    isFloat=false;
    _screen.text =[NSString stringWithFormat:@"0"];
    
}

- (IBAction)buttonEquals:(id)sender {
    
    if (RunningTotal==0) {
        RunningTotal=SelectNumber;
    }
    else{
            [self result:Method];
        
    }
    if (counter>counterMax) {
        counterMax=counter;
    }
    Method=0;
    SelectNumber=0;
    [self printResult];
        counter=0;
//_screen.text=[NSString stringWithFormat:@"%f",RunningTotal];
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
    counterMax=counter;
    counter=0;
    isFloat=false;
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
    counterMax=counter;
    counter=0;
    isFloat=false;
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
    counterMax=counter;
    counter=0;
    isFloat=false;
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
    counterMax=counter;
    counter=0;
    isFloat=false;
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
        _screen.text=[NSString stringWithFormat:@"%f",SelectNumber];
    }
}

- (IBAction)buttonComma:(id)sender {
    isFloat=true;
//_screen.text = [NSString stringWithFormat:@"%f,",SelectNumber];
}

@end
