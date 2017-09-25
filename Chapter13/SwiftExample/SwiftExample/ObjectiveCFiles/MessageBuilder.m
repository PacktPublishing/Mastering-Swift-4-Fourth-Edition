//
//  MessageBuilder.m
//  SwiftExample
//
//  Created by Jon Hoffman on 7/15/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

#import "MessageBuilder.h"
#import "SwiftExample-Swift.h"

@implementation MessageBuilder

-(NSString *)getPersonalizedMessageForName:(NSString*)name {
    Messages *messages = [[Messages alloc] init];
    
    NSString *retString = [NSString stringWithFormat:@"To: %@, %@",name, [messages getMessage]];
    return retString;
}
@end
