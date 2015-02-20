//
//  Contador.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Mostrador.h"

@interface Contador : NSObject {
    
    id <Mostrador> delegate;
}

+ (Contador *)sharedInstance;

@property (retain)id delegate;

- (void)maisUmCueca;
- (void)maisUmaGata;

-(int)getBoys;
-(int)getGirls;

- (int)getTotal;


@end

