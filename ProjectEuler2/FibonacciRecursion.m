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

@end
