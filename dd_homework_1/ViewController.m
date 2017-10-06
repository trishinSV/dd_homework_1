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
    NSString *myString =[[NSNumber numberWithDouble:SelectNumber]stringValue];
         _screen.text=myString;
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
        counter++;
    }
    else{
        SelectNumber=SelectNumber*10;
    }
    [self printSelectNumber];
}

- (IBAction)buttonClear:(id)sender {
    Method=0;
    RunningTotal=0;
    SelectNumber=0;
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

    NSString *myString =[[NSNumber numberWithDouble:RunningTotal]stringValue];
    _screen.text=myString;

    Method=0;
    SelectNumber=0;
    counter=0;
    
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
        
        
    } else  {
        SelectNumber=-SelectNumber;
        [self printSelectNumber];
    }
}

- (IBAction)buttonComma:(id)sender {
    isFloat=true;
    NSString *myString =[[NSNumber numberWithDouble:SelectNumber]stringValue];
    NSString* result = [myString stringByAppendingString: @"."];
    _screen.text = result;
}

@end
