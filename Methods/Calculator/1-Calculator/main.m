//
//  main.m
//  1-Calculator
//
//  Created by Test Test on 10/22/14.
//  Copyright (c) 2014 Test Test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Calculator *calc = [[Calculator alloc] init];
        
        [calc add: 5 : 10];
        [calc printResult];
        
        [calc substract: 5 : 10];
        [calc printResult];
        
        [calc multiply: 5 : 10];
        [calc printResult];
        
        [calc divide: 5 : 10];
        [calc printResult];
    }
    return 0;
}

