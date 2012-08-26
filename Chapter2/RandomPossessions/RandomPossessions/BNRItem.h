//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Madiha Mubin on 8/25/12.
//  Copyright (c) 2012 Sean Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

+ (id)randomItem;

- (id)initWithItemName:(NSString *)name
          serialNumber:(NSString *)sNumber;

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

@end
