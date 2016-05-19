//
//  DataService.m
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/30/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import "DataService.h"
#import "Firebase.h"

@implementation DataService
{
    NSString *_REF_BASE;
}

static DataService *dataServices = nil;

+ (DataService *)dataService {
    if (dataServices == nil) {
        dataServices = [[super allocWithZone:NULL] init];
    }
    return dataServices;
}

- (id)init {
    if (self = [super init]) {

    }
    return self;
}


@end
