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
        self._REF_BASE = [[Firebase alloc]initWithUrl:@"facebooklike-showcase.firebaseio.com"];
        self._REF_POSTS = [[Firebase alloc]initWithUrl:@"facebooklike-showcase.firebaseio.com/posts"];
        self._REF_USERS = [[Firebase alloc]initWithUrl:@"facebooklike-showcase.firebaseio.com/users"];
    }
    return self;
}


-(void)createFireBaseUserWithUID : (NSString*) uid WithUserDictionary : (NSMutableDictionary<NSString* , NSString* >*) user{
    
    [[self._REF_USERS childByAppendingPath:uid] setValue:user];
    
    
}


@end
