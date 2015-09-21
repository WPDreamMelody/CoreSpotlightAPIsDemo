//
//  DetailViewController.h
//  CoreSpotlightAPIsDemo
//
//  Created by yuki on 15/9/21.
//  Copyright © 2015年 kang.yu.sh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

