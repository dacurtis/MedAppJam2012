//
//  SettingsViewController.h
//  IncidentReport
//
//  Created by App Jam on 11/14/12.
//  Copyright (c) 2012 MedAppJam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController {
    NSMutableDictionary *dict;
}
@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UITextField *emailField;
@property (strong, nonatomic) IBOutlet UITextField *hospitalField;
@property (strong, nonatomic) IBOutlet UITextField *phoneField;
- (IBAction)saveSettings:(id)sender;
- (IBAction)fieldChanged:(id)sender;


@end