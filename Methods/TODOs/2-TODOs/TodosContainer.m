//
//  TodosContainer.m
//  2-TODOs
//
//  Created by Test Test on 10/24/14.
//  Copyright (c) 2014 Test Test. All rights reserved.
//

#import "TodosContainer.h"
#import "Todo.h"

@implementation TodosContainer

@synthesize allTodos;

-(id)init {
    if (self = [super init] ) {
        self.allTodos = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void) addTodo: (Todo*) todoObject{
    [allTodos addObject: todoObject];
}
-(void) removeTodo: (Todo*) todoObject{
    [allTodos removeObject: todoObject];
}
-(void) printAllTodos{
    NSMutableString *result = [[NSMutableString alloc] init];
    
    for(int i = 0; i < [allTodos count]; i++){
        Todo *currentTodo = [allTodos objectAtIndex:i];
        NSString *currentTodoToString = [NSString stringWithFormat:@"%i - Description: %@; EndDate: %@ \n", i + 1, currentTodo.description, currentTodo.endDate];
        
        [result appendString: currentTodoToString];
    }
    
    NSLog(@"%@", result);
}

@end
