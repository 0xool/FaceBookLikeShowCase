//
//  ViewController.m
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/25/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fbBtnPressed:(id)sender {
    
    FBSDKLoginManager *lm = [[FBSDKLoginManager alloc]init];
    [lm logInWithReadPermissions:@[@"email"] handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
      if(error != nil){

      }else {
          
          NSString *accessTocken = [[FBSDKAccessToken currentAccessToken] tokenString ];
          NSLog(@"YAAAAAAAY");
          
      }
          
  }];
}
@end
