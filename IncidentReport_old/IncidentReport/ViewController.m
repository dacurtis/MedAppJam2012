//
//  ViewController.m
//  IncidentReport
//
//  Created by Matt Gardner on 11/11/12.
//  Copyright (c) 2012 MedAppJam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //incidentQueue = [IncidentQueueController init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender
{
    NSDate *dateOfIncident = [NSDate date];
    NSLog(@"button pressed is : %d", [sender tag]);
    //[incidentQueue enqueue([Incident initReportLater]);
}

@end
