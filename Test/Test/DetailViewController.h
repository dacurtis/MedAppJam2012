//
//  DetailViewController.h
//  Test
//
//  Created by App Jam on 11/10/12.
//  Copyright (c) 2012 App Jam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
