//
//  main.m
//  2-GenerateMatrixWithFunction
//
//  Created by Test Test on 10/22/14.
//  Copyright (c) 2014 Test Test. All rights reserved.
//

#import <Foundation/Foundation.h>

void printMatrix(NSArray *matrix) {
    NSMutableString *buffer = [[NSMutableString alloc] init];
    for (NSArray *row in matrix) {
        for (NSNumber *cell in row) {
            [buffer appendFormat:@"%3d", [cell intValue]];
        }
        
        [buffer appendString:@"\n"];
    }
    
    NSLog(@"\n%@", buffer);
}

NSMutableArray* generateMatrix(int matrixSize){
    NSMutableArray *matrix = [[NSMutableArray alloc] initWithCapacity: 5];
    int index = 0;
    NSString *currentDirection = @"right";
    
    
    for (int i = 0; i < matrixSize; i++) {
        matrix[i] = [[NSMutableArray alloc] initWithCapacity: matrixSize];
        for (int j = 0; j < matrixSize; j++) {
            matrix[i][j] = [NSNull null];
        }
    }
    
    int currentRow = 0;
    int currentCol = 0;
    
    for (int i = 0; i < matrixSize * matrixSize; i++) {
        index++;
        
        if ([currentDirection isEqualToString: @"right"] && (currentCol > (matrixSize - 1) || ![matrix[currentRow][currentCol] isEqual: [NSNull null]])) {
            currentDirection = @"down";
            currentCol--;
            currentRow++;
        }
        else if([currentDirection isEqualToString: @"down"] && (currentRow > (matrixSize - 1) || ![matrix[currentRow][currentCol] isEqual: [NSNull null]])){
            currentDirection = @"left";
            currentRow--;
            currentCol--;
        }
        else if([currentDirection isEqualToString: @"left"] && (currentCol < 0 || ![matrix[currentRow][currentCol] isEqual: [NSNull null]])){
            currentDirection = @"up";
            currentRow--;
            currentCol++;
        }
        else if([currentDirection isEqualToString: @"up"] && (currentRow < 0 || ![matrix[currentRow][currentCol] isEqual: [NSNull null]])){
            currentDirection = @"right";
            currentRow++;
            currentCol++;
        }
        
        matrix[currentRow][currentCol] = [NSNumber numberWithInt: index];
        
        if ([currentDirection isEqualToString: @"right"]) {
            currentCol++;
        }
        else if ([currentDirection isEqualToString: @"down"]) {
            currentRow++;
        }
        else if ([currentDirection isEqualToString: @"left"]) {
            currentCol--;
        }
        else if ([currentDirection isEqualToString: @"up"]) {
            currentRow--;
        }
    }
    
    return matrix;
}

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int matrixSize = 1;
        
        NSLog(@"Enter matrix size:");
        scanf("%d", &matrixSize);
        
        NSMutableArray* generatedMatrix = generateMatrix(matrixSize);
        
        printMatrix(generatedMatrix);
    }
    
    return 0;
}

