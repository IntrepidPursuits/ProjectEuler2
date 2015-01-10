//
//  FibonacciRecursion.m
//  ProjectEuler2
//
//  Created by Ross LeBeau on 1/9/15.
//  Copyright (c) 2015 Intrepid. All rights reserved.
//

#import "FibonacciRecursion.h"

@implementation FibonacciRecursion

+ (NSInteger)sumOfEvenFibonacciNumbersWithFirstTerm:(NSInteger)firstTerm secondTerm:(NSInteger)secondTerm notLargerThan:(NSInteger)limit {
    NSInteger sum = 0;
    
    if (firstTerm > limit) {
        return 0;
    } else if (firstTerm % 2  == 0) {
        sum += firstTerm;
    }
    
    if (secondTerm > limit) {
        return sum;
    } else if (secondTerm % 2  == 0) {
        sum += secondTerm;
    }
    
    NSInteger thirdTerm = firstTerm + secondTerm;
    NSInteger fourthTerm = secondTerm + thirdTerm;
    
    return sum + [self sumOfEvenFibonacciNumbersWithFirstTerm:thirdTerm secondTerm:fourthTerm notLargerThan:limit];
}

#pragma mark - 

+ (NSInteger)alternateSumOfEvenFibonacciNumbersWithFirstTerm:(NSInteger)firstTerm secondTerm:(NSInteger)secondTerm notLargerThan:(NSInteger)limit {
    NSArray *fibNumbers = [self allFibonacciNumbersNotLargerThan:limit withFirstTerm:firstTerm secondTerm:secondTerm];
    return [self sumOfEvenNumbersInArray:fibNumbers];
}

// Yes, there is really no reason not to use a C array. This is just demonstrating some things about NSArray because we use it a lot
+ (NSArray *)allFibonacciNumbersNotLargerThan:(NSInteger)limit withFirstTerm:(NSInteger)firstTerm secondTerm:(NSInteger)secondTerm {
    if (firstTerm > limit) {
        return nil;
    } else if (secondTerm > limit) {
        return @[@(firstTerm)]; // Shorthand for creating an NSArray and NSNumber
        
        // This is equivalent to:
        return [NSArray arrayWithObject:[NSNumber numberWithInteger:firstTerm]];
    } else {
        NSInteger thirdTerm = firstTerm + secondTerm;
        NSInteger fourthTerm = secondTerm + thirdTerm;
        return [@[@(firstTerm), @(secondTerm)] arrayByAddingObjectsFromArray:[self allFibonacciNumbersNotLargerThan:limit withFirstTerm:thirdTerm secondTerm:fourthTerm]];
    }
}

+ (NSInteger)sumOfEvenNumbersInArray:(NSArray *)array {
    if (array.count == 0) {
        return 0;
    } else {
        NSInteger firstNumber = [array[0] integerValue];
        NSInteger numberToAdd = 0;
        
        if (firstNumber % 2 == 0) {
            numberToAdd = firstNumber;
        }
        
        return numberToAdd + [self sumOfEvenNumbersInArray:[array subarrayWithRange:NSMakeRange(1, array.count - 1)]];
    }
}

@end
