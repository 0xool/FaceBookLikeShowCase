//
//  postCell.h
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/30/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"

@interface postCell : UITableViewCell 

@property (weak , nonatomic) IBOutlet UIImageView *profileIamge;
@property (weak , nonatomic) IBOutlet UIImageView *showCaseImage;
@property (weak , nonatomic) IBOutlet UILabel *Likes;
@property (weak, nonatomic) IBOutlet UITextView *Desc;


@property Post* post;

-(void)configureCellWithPost : (Post*)post;

@end
