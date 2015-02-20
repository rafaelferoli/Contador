//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
}
@synthesize delegate;


static Contador *contador = nil;

+ (Contador *)sharedInstance {
    
    if(contador == nil) {
        contador = [[Contador alloc] init];
    }
    
    return contador;
}

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy = boy + 1;
    
    [delegate atualiza];
}
- (void)maisUmaGata {
    girl++;
    
    [delegate atualiza];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

- (int)getTotal {
    return boy + girl;
}



@end

