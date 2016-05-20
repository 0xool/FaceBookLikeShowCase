//
//  postCell.m
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/30/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import "postCell.h"

@implementation postCell

- (void)awakeFromNib {

}


-(void)drawRect:(CGRect)rect{
    
    self.profileIamge.layer.cornerRadius = self.profileIamge.frame.size.width / 2;
    self.profileIamge.clipsToBounds = true;
    self.showCaseImage.clipsToBounds = true;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
