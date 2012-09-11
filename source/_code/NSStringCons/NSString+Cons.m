//
//  NSString+Cons.m
//  NSStringCons
//
//  Created by Will Ross on 8/12/11.
//  Copyright (c) 2011 Naval Research Lab. All rights reserved.
//

#import "NSString+Cons.h"
#import <stdarg.h>
#import <objc/runtime.h>

id stringCons(id self, SEL selector, ...);

@implementation NSString (Cons)

+(BOOL)resolveInstanceMethod:(SEL)sel{
	// Check that the selector is just ':' characters
	const char *checkName = sel_getName(sel);
	BOOL isCons = YES;
	int i = 0;
	char c = checkName[i];
	while(c != '\0'){
		if(c != ':'){
			isCons = NO;
			break;
		}
		c = checkName[++i];
	}
	// Add the method, or pass this message up the chain
	if(isCons){
		// Make the type string
		size_t typesSize = 4 + i;
		char *types = malloc(sizeof(char) * typesSize);
		types[0] = '@';
		types[1] = '@';
		types[2] = ':';
		for(int j = 3; j < typesSize - 1; ++j){
			types[j] = '@';
		}
		types[typesSize - 1] = '\0';
		// Add the method
		class_addMethod([self class], sel, stringCons, types);
		return YES;
	}else{
		return [super resolveInstanceMethod:sel];
	}
}

@end

id stringCons(id self, SEL selector, ...){
	va_list strings;
	NSMutableString *fullString = [[NSMutableString alloc] initWithString:self];
	va_start(strings, selector);
	id currentString = nil;
	// End on nil
	while((currentString = va_arg(strings, id))){
		[fullString appendString:currentString];
	}
	va_end(strings);
	return fullString;
}