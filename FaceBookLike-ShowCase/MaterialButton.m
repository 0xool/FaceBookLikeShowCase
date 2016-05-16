//
//  MaterialButton.m
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/27/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import "MaterialButton.h"

@implementation MaterialButton


-(void)awakeFromNib{
    
    self.layer.cornerRadius = 2.0;
    self.layer.shadowColor = [[UIColor colorWithRed:157.0/255.0f green:157.0/255.0f blue:157.0/255.0f alpha: 1] CGColor];
    self.layer.shadowOpacity = 0.8;
    self.layer.shadowRadius = 5.0;
    self.layer.shadowOffset =  CGSizeMake(0.0 , 2.0 );
}


@end
