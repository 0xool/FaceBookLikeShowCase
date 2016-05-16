//
//  MaterialTextField.m
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/27/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import "MaterialTextField.h"

@implementation MaterialTextField

-(void)awakeFromNib{
    
    self.layer.cornerRadius = 2.0;
    self.layer.borderColor = [[UIColor colorWithRed:157.0/255.0f green:157.0/255.0f blue:157.0/255.0f alpha: 0.1] CGColor];
    self.layer.borderWidth = 1.0;
    
}

-(CGRect)textRectForBounds:(CGRect)bounds{

    return CGRectInset(bounds, 10, 0);
    
}

-(CGRect)editingRectForBounds:(CGRect)bounds{
    
     return CGRectInset(bounds, 10, 0);
    
}



@end
