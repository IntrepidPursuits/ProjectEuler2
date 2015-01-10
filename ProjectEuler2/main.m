//
//  main.m
//  ProjectEuler2
//
//  Created by Ross LeBeau on 1/9/15.
//  Copyright (c) 2015 Intrepid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FibonacciRecursion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Project Euler Problem 2
        NSInteger firstTerm = 1;
        NSInteger secondTerm = 2;
        NSInteger limit = 4000000;
        NSInteger sum = [FibonacciRecursion sumOfEvenFibonacciNumbersWithFirstTerm:firstTerm secondTerm:secondTerm notLargerThan:limit];
        
        NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
        numberFormatter.groupingSize = 3;
        numberFormatter.groupingSeparator = @",";
        numberFormatter.usesGroupingSeparator = YES;
        NSLog(@"Sum of numbers equal to or less than %@ in Fibonacci sequence starting with %li and %li is: %li", [numberFormatter stringFromNumber:@(limit)], firstTerm, secondTerm, sum);
    }
    return 0;
}
