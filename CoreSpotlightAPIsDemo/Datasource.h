//
//  Datasource.h
//  CoreSpotlightAPIsDemo
//
//  Created by yuki on 15/9/21.
//  Copyright © 2015年 kang.yu.sh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Datasource : NSObject

@property (nonatomic,strong) NSArray*people;

- (void)savePeopleToIndex;
@end
