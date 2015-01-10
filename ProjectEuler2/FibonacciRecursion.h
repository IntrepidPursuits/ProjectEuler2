//
//  FibonacciRecursion.h
//  ProjectEuler2
//
//  Created by Ross LeBeau on 1/9/15.
//  Copyright (c) 2015 Intrepid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FibonacciRecursion : NSObject

+ (NSInteger)sumOfEvenFibonacciNumbersWithFirstTerm:(NSInteger)firstTerm secondTerm:(NSInteger)secondTerm notLargerThan:(NSInteger)limit;
+ (NSInteger)alternateSumOfEvenFibonacciNumbersWithFirstTerm:(NSInteger)firstTerm secondTerm:(NSInteger)secondTerm notLargerThan:(NSInteger)limit;

@end
