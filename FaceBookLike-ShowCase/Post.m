//
//  Post.m
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 3/2/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import "Post.h"

@implementation Post

- (id)initWithDESC : (NSString*) description withImageURL : (NSString*) imageURL withUsername : (NSString*) userName
{
    self = [super init];
    if (self) {
        self.postDescription = description;
        self.imageURL = imageURL;
        self.userName = userName;
    }
    return self;
}

- (id)initWithPostKey : (NSString*) postKey withDictionary :(NSMutableDictionary<NSString* , id>*)dictionary
{
    self = [super init];
    if (self) {
        self.postKey = postKey;
        if(dictionary[@"likes"] != nil){
            self.likes = [dictionary[@"likes"] integerValue];
        }
        
        if(dictionary[@"imageURL"] != nil){
            self.imageURL = dictionary[@"imageURL"] ;
        }
        
        if(dictionary[@"description"] != nil){
            self.postDescription = dictionary[@"description"];
        }
        
        
    }
    return self;
}


@end
