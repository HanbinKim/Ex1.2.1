//
//  Catalog.m
//  Ex1.2.1
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Catalog.h"
#import "Product.h"
@implementation Catalog
{
    NSArray *data;
}

static Catalog *_instance = nil;
+ (id)defalutCatalog
{
    if(nil == _instance)
        _instance = [[Catalog alloc]init];
    return _instance;
    

}

- (id)init
{
    self = [super init];
    if(self)
    {
        for(int i=1;i<=5;i++)
        {
            data=@[[Product product:@"car1" price:@"100" image:@"car1.png"]
                   ,[Product product:@"car2" price:@"200" image:@"car2.png"]
                   ,[Product product:@"car3" price:@"300" image:@"car3.png"]
                   ,[Product product:@"car4" price:@"400" image:@"car4.png"]
                   ,[Product product:@"car5" price:@"999" image:@"car5.png"]];
        }
    }
    return self;
}

- (id) productAt:(int)index
{
    return [data objectAtIndex:index];
}

- (int)numberOfProducts
{
    return [data count];
}


@end
