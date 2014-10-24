//
//  Calculator.m
//  1-Calculator
//
//  Created by Test Test on 10/22/14.
//  Copyright (c) 2014 Test Test. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize result;

-(void) add:(double) firstNumber :(double) secondNumber{
    result = firstNumber + secondNumber;
}

-(void) substract:(double) firstNumber :(double) secondNumber{
    result = firstNumber - secondNumber;
}

-(void) multiply:(double) firstNumber :(double) secondNumber{
    result = firstNumber * secondNumber;
}

-(void) divide:(double) firstNumber :(double) secondNumber{
    result = firstNumber / secondNumber;
}

-(void) printResult{
    NSLog(@"The result is %f", result);
}

@end
