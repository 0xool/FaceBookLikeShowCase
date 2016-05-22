//
//  Post.h
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 3/2/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject

@property (weak , nonatomic) NSString* postDescription;
@property (weak , nonatomic) NSString* imageURL;
@property (weak , nonatomic) NSString* userName;
@property (weak , nonatomic) NSString* postKey;
@property  int likes;

- (id)initWithDESC : (NSString*) description withImageURL : (NSString*) imageURL withUsername : (NSString*) userName;

- (id)initWithPostKey : (NSString*) postKey withDictionary :(NSMutableDictionary<NSString* , id>*)dictionary;


@end
