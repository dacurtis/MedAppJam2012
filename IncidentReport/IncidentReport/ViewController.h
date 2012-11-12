//
//  ViewController.h
//  IncidentReport
//
//  Created by Matt Gardner on 11/11/12.
//  Copyright (c) 2012 MedAppJam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIButton *reportLater;
}
@property (nonatomic, retain) UIButton *reportLater;
- (IBAction)buttonPressed:(UIButton *)sender;

@end