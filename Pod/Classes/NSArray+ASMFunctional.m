//
//  NSArray+ASMFunctional.m
//  BabyGrow
//
//  Created by Andrew Molloy on 10/7/14.
//
//

#import "NSArray+ASMFunctional.h"

@implementation NSArray (ASMFunctional)

- (NSArray*)map:(id(^)(id obj))m
{
	NSMutableArray* result = [NSMutableArray arrayWithCapacity:self.count];
	[self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
		[result addObject:m(obj)];
	}];
	return result.copy;
}

- (NSArray*)filter:(BOOL(^)(id obj))f
{
	NSMutableArray* result = [NSMutableArray arrayWithCapacity:self.count];
	for (id obj in self)
	{
		if (f(obj))
		{
			[result addObject:obj];
		}
	}
	return result.copy;
}

@end
