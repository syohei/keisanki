//
//  ViewController.m
//  keisanki
//
//  Created by 山田　将平 on 13/11/14.
//  Copyright (c) 2013年 university of kitakyusyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    startInput = YES;
    currentValue = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)clearButton:(id)sender {
	label.text = @"0";
    startInput = YES;
}

- (IBAction)numberButton:(id)sender{
    UIButton *button = (UIButton *)sender;
    
       
    
    
    if (startInput){  //一桁目の入力
        if(button.tag == 0) return;
   
        if(button.tag == 10){
            label.text = [NSString stringWithFormat:@"0."];
        }else{
            label.text = [NSString stringWithFormat:@"%d",button.tag];
        }
        startInput=NO;
   }else{
        if(button.tag==10){  //"."なら
            NSRange searchResult = [label.text rangeOfString:@"."];  //すでに"."がないかチェック
        if(searchResult.location == NSNotFound){
                label.text = [NSString stringWithFormat:@"%@%@",label.text,@"."];
            }
        }else{
            label.text = [NSString stringWithFormat:@"%@%d",label.text,button.tag];
        }
    }
}

-(IBAction)equalButton:(id)sender{
           if(operation == 0){
        currentValue +=[label.text doubleValue];
    } else if(operation == 1){
        currentValue -=[label.text doubleValue];
    } else if(operation == 2){
        currentValue *=[label.text doubleValue];
    } else if(operation == 3){
        currentValue /=[label.text doubleValue];
    }
    label.text = [NSString stringWithFormat:@"%g",currentValue];
   startInput = YES;
    
    
    
    
    
    
}

- (IBAction)calcButton:(id)sender{
    UIButton *button = (UIButton *)sender;
    currentValue = [label.text doubleValue];
    operation = button.tag;
    startInput = YES;
}

@end
