//
//  main.m
//  2-TODOs
//
//  Created by Test Test on 10/24/14.
//  Copyright (c) 2014 Test Test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Todo.h"
#import "TodosContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        TodosContainer *todos = [[TodosContainer alloc] init];
        
        NSDateComponents *components = [[NSDateComponents alloc] init];
        NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        
        
        [components setDay:2];
        NSDate *endDateFirstTodo = [gregorian dateByAddingComponents:components toDate:[NSDate date] options:0];
        [components setDay:3];
        NSDate *endDateSecondTodo = [gregorian dateByAddingComponents:components toDate:[NSDate date] options:0];
        [components setDay:5];
        NSDate *endDateThirdTodo = [gregorian dateByAddingComponents:components toDate:[NSDate date] options:0];
        
        Todo *firstTodo = [[Todo alloc] init];
        firstTodo.description = @"Test 1";
        firstTodo.endDate = endDateFirstTodo;
        
        Todo *secondTodo = [[Todo alloc] init];
        secondTodo.description = @"Test 2";
        secondTodo.endDate = endDateSecondTodo;
        
        Todo *thirdTodo = [[Todo alloc] init];
        thirdTodo.description = @"Test 3";
        thirdTodo.endDate = endDateThirdTodo;
        
        [todos addTodo: firstTodo];
        [todos addTodo: secondTodo];
        [todos addTodo: thirdTodo];
        [todos printAllTodos];
        
    }
    return 0;
}

