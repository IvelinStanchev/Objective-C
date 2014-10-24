//
//  TodosContainer.h
//  2-TODOs
//
//  Created by Test Test on 10/24/14.
//  Copyright (c) 2014 Test Test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Todo.h"

@interface TodosContainer : NSObject

@property NSMutableArray *allTodos;

-(void) addTodo: (Todo*) todoObject;
-(void) removeTodo: (Todo*) todoObject;
-(void) printAllTodos;

@end
