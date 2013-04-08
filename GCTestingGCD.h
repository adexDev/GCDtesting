//
//  GCTestingGCD.h
//  GCDtesting
//
//  Created by User on 08/04/2013.
//  Copyright (c) 2013 amaCoder. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^ myTask)(void);

@interface GCTestingGCD : NSObject



-(void)performExecutionWithBlocks;
@end
