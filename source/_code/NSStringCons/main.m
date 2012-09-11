//
//  main.m
//  NSStringCons
//
//  Created by Will Ross on 8/12/11.
//  Copyright (c) 2011 Naval Research Lab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Cons.h"

int main (int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSString *one = @"1";
	NSString *two = @"2";
	NSString *three = @"3";
	
	NSLog(@"one:\t%@", one);
	NSLog(@"two:\t%@", two);
	NSLog(@"three:\t%@", three);
	NSLog(@"all:\t%@", [one:two:three:nil]);
	[pool drain];
    return 0;
}

