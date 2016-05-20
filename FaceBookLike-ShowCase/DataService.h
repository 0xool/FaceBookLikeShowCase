//
//  DataService.h
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/30/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Firebase.h"

@interface DataService : NSObject

+ (DataService *)dataService;

@property  Firebase* _REF_BASE;

@end
