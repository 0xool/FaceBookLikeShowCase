//
//  ViewController.h
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/25/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface ViewController : UIViewController

- (IBAction)fbBtnPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *EmailAddress;
@property (weak, nonatomic) IBOutlet UITextField *Password;
- (IBAction)emailBtnPressed:(id)sender;

@end

