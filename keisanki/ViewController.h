//
//  ViewController.h
//  keisanki
//
//  Created by 山田　将平 on 13/11/14.
//  Copyright (c) 2013年 university of kitakyusyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *label;
    BOOL startInput;
    double currentValue;
    double operation;
    
}



- (IBAction)clearButton:(id)sender;
- (IBAction)numberButton:(id)sender;
- (IBAction)equalButton:(id)sender;
- (IBAction)calcButton:(id)sender;


@end
