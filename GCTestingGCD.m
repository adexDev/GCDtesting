//
//  GCTestingGCD.m
//  GCDtesting
//
//  Created by User on 08/04/2013.
//  Copyright (c) 2013 amaCoder. All rights reserved.
//

#import "GCTestingGCD.h"
#import <dispatch/queue.h>



@interface GCTestingGCD (){
    
    dispatch_queue_t firstBackGroundQueue;
}


@end

@implementation GCTestingGCD

-(id)init{
    
    self = [super init];
    if (self) {
        
        firstBackGroundQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
    }
    return self;
}


-(void)performExecutionWithBlocks{
    /* Each task execute independently regardless
     of the main queue or main application*/
    
    dispatch_async(firstBackGroundQueue, ^{
        
        
        for (int i = 0; i < 10; i++) {
            
            NSLog(@"ONE");
        }
        
    });
    
    dispatch_async(firstBackGroundQueue, ^{
    
        
        for (int i = 0; i < 10; i++){
            
            NSLog(@"TWO");
            
            
        }
        
    });
    
    dispatch_async(firstBackGroundQueue, ^{
        
        
        for (int i = 0; i < 10 ; i++) {
            
            NSLog(@"THREE");
        }
          
        
      
    });
    


}
  @end
