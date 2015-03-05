//
//  NSArray+ASMFunctional.h
//  BabyGrow
//
//  Created by Andrew Molloy on 10/7/14.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (ASMFunctional)

- (NSDictionary*)map:(id(^)(id obj))m;
- (NSDictionary*)filter:(BOOL(^)(id obj))f;

@end
