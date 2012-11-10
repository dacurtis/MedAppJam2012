//
//  MasterViewController.h
//  Test
//
//  Created by App Jam on 11/10/12.
//  Copyright (c) 2012 App Jam. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
