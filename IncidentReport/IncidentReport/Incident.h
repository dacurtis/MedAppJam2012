//
//  Incident.h
//  IncidentReport
//
//  Created by App Jam on 11/12/12.
//  Copyright (c) 2012 MedAppJam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Incident : NSObject
@property (weak, nonatomic) NSDate *time;
@property (weak, nonatomic) NSString *title;
@end
