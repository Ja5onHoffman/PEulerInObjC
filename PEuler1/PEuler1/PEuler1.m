//
//  main.m
//  PEuler1
//
//  Created by Jason Hoffman on 1/8/15.
//  Copyright (c) 2015 JHM. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PEuler1 : NSObject

- (NSNumber *)multiplesOfThreeAndFiveBelow:(int)integer;

@end

@implementation PEuler1
{
    NSMutableArray *_a;
    int _total;
}

- (NSNumber *)multiplesOfThreeAndFiveBelow:(int)integer
{
    _a = [[NSMutableArray alloc] init];
    
    while (integer > 0) {
        integer--;
        if (integer % 3 == 0 || integer % 5 == 0) {
            [_a addObject:[NSNumber numberWithInteger:integer]];
        }
    }
    
    for (int i = 0; i < [_a count]; i++) {
        _total += [[_a objectAtIndex:i] integerValue];
    }
    
    return [NSNumber numberWithInt:_total];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        PEuler1 *problem1 = [[PEuler1 alloc] init];
        NSNumber *answer = [problem1 multiplesOfThreeAndFiveBelow:1000];
        
        NSLog(@"Answer: %@", answer);
    }
    
    return 0;
}
