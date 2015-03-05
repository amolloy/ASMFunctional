//
//  NSArray+ASMFunctional.m
//  BabyGrow
//
//  Created by Andrew Molloy on 10/7/14.
//
//

#import "NSArray+ASMFunctional.h"

@implementation NSDictionary (ASMFunctional)

- (NSDictionary*)map:(id(^)(id key, id value))m
{
	NSMutableDictionary* result = [NSMutableDictionary dictionaryWithCapacity:self.count];
	[self enumerateKeysAndObjectsUsingBlock:^(id key, id value, BOOL *stop) {
		result[key] = m(key, value);
	}];
	return result.copy;
}

- (NSDictionary*)filter:(BOOL(^)(id key, id value))f
{
	NSMutableDictionary* result = [NSMutableDictionary dictionaryWithCapacity:self.count];
	[self enumerateKeysAndObjectsUsingBlock:^(id key, id value, BOOL *stop) {
		if (f(key, value))
		{
			result[key] = value;
		}
	}];
	return result.copy;
}

@end
