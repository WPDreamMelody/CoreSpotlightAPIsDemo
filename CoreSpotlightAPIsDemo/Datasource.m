//
//  Datasource.m
//  CoreSpotlightAPIsDemo
//
//  Created by yuki on 15/9/21.
//  Copyright © 2015年 kang.yu.sh. All rights reserved.
//

#import "Datasource.h"
#import "Person.h"
#import <CoreSpotlight/CoreSpotlight.h>


@implementation Datasource

- (void)savePeopleToIndex{
    NSMutableArray<CSSearchableItem *> * searchableItems = [NSMutableArray array];
    
    for (Person *person in self.people) {
        CSSearchableItemAttributeSet* attributeSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"image"];
        attributeSet.title = person.name;
        attributeSet.contentDescription = @"This is an entry all about the interesting person\
        called(person.name)";
        attributeSet.thumbnailData = UIImagePNGRepresentation(person.image);
        
        id item = [[CSSearchableItem alloc]initWithUniqueIdentifier:person.pid domainIdentifier:@"com.ios9daybyday.SearchAPIs.people" attributeSet:attributeSet];
        [searchableItems addObject:item];
    }
    
    [[CSSearchableIndex defaultSearchableIndex] indexSearchableItems:searchableItems completionHandler:^(NSError * _Nullable error) {
        if(error != nil){
            NSLog(@"%@",error.localizedDescription);
        }
    }];
}

- (instancetype)init{
    Person* becky = [Person new];
    becky.name = @"Becky";
    becky.pid = @"1";
    becky.image = [UIImage imageNamed:@"1.png"];
    Person* becky2 = [Person new];
    becky2.name = @"becky2";
    becky2.pid = @"2";
    becky2.image = [UIImage imageNamed:@"2.png"];
    Person* becky3 = [Person new];
    becky3.name = @"becky3";
    becky3.pid = @"3";
    becky3.image = [UIImage imageNamed:@"3.png"];
    
    self.people = [NSArray arrayWithObjects:becky,becky2,becky3,nil];
    
    return self;
}

@end
