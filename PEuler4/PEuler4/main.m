//
//  main.m
//  PEuler4
//
//  Created by Jason Hoffman on 1/18/15.
//  Copyright (c) 2015 JHM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PEuler4 : NSObject

- (NSNumber *)findLargestPalindrome;

@end

@implementation PEuler4

- (NSNumber *)findLargestPalindrome
{
    NSMutableArray *ar = [[NSMutableArray alloc] init];
    int a;
    int temp;
    NSNumber *b;
    int rev = 0;
    for (int i = 100; i < 1000; i++) {
        for (int j = 100; j < 1000; j++) {
            a = i*j;
            b = [NSNumber numberWithInt:a];
            temp = a;
            while (temp != 0) {
                rev = rev * 10;
                rev = rev + temp%10;
                temp = temp/10;
            }
            
            if (a == rev) {
                [ar addObject:[NSNumber numberWithInt:a]];
            }
            
            rev = 0;
        }
    }
    
    NSNumber *max = [ar valueForKeyPath:@"@max.intValue"];
    return max;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        PEuler4 *problem4 = [PEuler4 new];
        NSNumber *answer = [problem4 findLargestPalindrome];
        NSLog(@"Answer: %@", answer);
    }
    return 0;
}
