//
//  ReportNowControllerViewController.m
//  IncidentReport
//
//  Created by App Jam on 11/15/12.
//  Copyright (c) 2012 MedAppJam. All rights reserved.
//

#import "ReportNowControllerViewController.h"
#import "DocPath.h"

@interface ReportNowControllerViewController ()

@end

@implementation ReportNowControllerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void) loadView{
    [super loadView];
    NSString *path = [DocPath getPath].path;
    NSLog(@"%@",path);
    NSDictionary *dict = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    [self.hospitalField setText:[dict valueForKey:@"Hospital"]];
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

@end
