//
//  ViewController.h
//  IncidentReport
//
//  Created by Matt Gardner on 11/11/12.
//  Copyright (c) 2012 MedAppJam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)reportLater:(id)sender forEvent:(UIEvent *)event;

- (IBAction)reportNow:(id)sender forEvent:(UIEvent *)event;

@end
