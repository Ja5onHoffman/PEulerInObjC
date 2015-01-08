//
//  main.m
//  PEuler2
//
//  Created by Jason Hoffman on 1/8/15.
//  Copyright (c) 2015 JHM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PEuler2 : NSObject

- (NSNumber *)sumOfEvenFibonacciNumbersLessThan:(int)integer;

@end

@implementation PEuler2
{
    NSNumber *zero;
}

- (NSNumber *)sumOfEvenFibonacciNumbersLessThan:(int)integer
{
    NSMutableArray *ar1 = [[NSMutableArray alloc] initWithObjects:@0, @1, nil];
    NSMutableArray *ar2 = [[NSMutableArray alloc] init];
    int fib = 0;
    
    for (int i = 1; fib <= integer; i++) {
        NSUInteger n = [ar1[i] integerValue] + [ar1[i-1] integerValue];
        [ar1 addObject:[NSNumber numberWithInteger:n]];
        fib = (int)n;
        if (n % 2 == 0) {
            [ar2 addObject:[NSNumber numberWithInteger:n]];
        }
    }
    
    return [ar2 valueForKeyPath:@"@sum.self"];;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PEuler2 *problem2 = [[PEuler2 alloc] init];
        
        NSNumber *answer = [problem2 sumOfEvenFibonacciNumbersLessThan:4000000];
        
        NSLog(@"Answer: %@", answer);
    }
    return 0;
}