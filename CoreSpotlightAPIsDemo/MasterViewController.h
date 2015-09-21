//
//  MasterViewController.h
//  CoreSpotlightAPIsDemo
//
//  Created by yuki on 15/9/21.
//  Copyright © 2015年 kang.yu.sh. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

- (void)showFirend:(NSString*)firendId;

@end

