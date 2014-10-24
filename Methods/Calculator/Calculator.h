//
//  Calculator.h
//  1-Calculator
//
//  Created by Test Test on 10/22/14.
//  Copyright (c) 2014 Test Test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property double result;

-(void) add:(double) firstNumber :(double) secondNumber;
-(void) substract:(double) firstNumber :(double) secondNumber;
-(void) multiply:(double) firstNumber :(double) secondNumber;
-(void) divide:(double) firstNumber :(double) secondNumber;
-(void) printResult;

@end
