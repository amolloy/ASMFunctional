//
//  NSArray+ASMFunctional.h
//  BabyGrow
//
//  Created by Andrew Molloy on 10/7/14.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (ASMFunctional)

- (NSArray*)map:(id(^)(id obj))m;
- (NSArray*)filter:(BOOL(^)(id obj))f;

@end
