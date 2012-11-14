//
//  SettingsViewController.m
//  IncidentReport
//
//  Created by App Jam on 11/14/12.
//  Copyright (c) 2012 MedAppJam. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
@synthesize nameField;
@synthesize hospitalField;
@synthesize phoneField;
@synthesize emailField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView {
    [super loadView];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"settings" ofType: @"plist"];
    dict = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    [nameField setText:[dict valueForKey:@"Name"]];
    [emailField setText:[dict valueForKey:@"Email"]];
    [phoneField setText:[dict valueForKey:@"Phone #"]];
    [hospitalField setText:[dict valueForKey:@"Hospital"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveSettings:(id)sender {
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    docPath = [docPath stringByAppendingPathComponent:@"settings.plist"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if(![fileManager fileExistsAtPath:docPath]) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"settings" ofType: @"plist"];
        [fileManager copyItemAtPath:path toPath:docPath error:nil];
    }
    
    [dict writeToFile:docPath atomically:YES];
    NSArray *dictArray = [[NSArray alloc] init];
    [dictArray setValuesForKeysWithDictionary:dict];
    [dictArray writeToFile:docPath atomically:YES];
}

- (IBAction)fieldChanged:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"settings" ofType: @"plist"];
    dict = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    if([sender tag] == 1)
        [dict setValue:nameField.text forKey:@"Name"];
    if([sender tag] == 2)
        [dict setValue:emailField.text forKey:@"Email"];
    if([sender tag] == 3)
        [dict setValue:hospitalField.text forKey:@"Hospital"];
    if([sender tag] == 4)
        [dict setValue:phoneField.text forKey:@"Phone #"];
}


@end
