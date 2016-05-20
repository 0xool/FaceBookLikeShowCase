//
//  ViewController.m
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/25/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import "ViewController.h"
#import "DataService.h"

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

-(void)viewDidAppear:(BOOL)animated{
    
   NSObject* key = [[NSUserDefaults standardUserDefaults] valueForKey:@"uid"];
    if (key != nil) {
        [self performSegueWithIdentifier:@"loggedIN" sender:nil];
    }
    
}

- (IBAction)fbBtnPressed:(id)sender {
    
    FBSDKLoginManager *lm = [[FBSDKLoginManager alloc]init];
    [lm logInWithReadPermissions:@[@"email"] handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
      if(error != nil){

      }else {
          
          NSString *accessToken = [[FBSDKAccessToken currentAccessToken] tokenString ];
          NSLog(@"YAAAAAAAY");
          [[DataService dataService]._REF_BASE authWithOAuthProvider:@"facebook" token:accessToken withCompletionBlock:^(NSError *error, FAuthData *authData) {
              
              if(error != nil){
                  
                  NSLog(@"Found Error");
                  
              }else{
                  
                  [[NSUserDefaults standardUserDefaults] setValue:authData.uid   forKey:@"uid"];
                  [self performSegueWithIdentifier:@"loggedIN" sender:nil];
              }
              
          }];
          
      }
          
  }];
}
- (IBAction)emailBtnPressed:(id)sender {
    
    NSString* email = self.EmailAddress.text;
    NSString* pass = self.Password.text;
    
    if (![email  isEqual: @""] && email != nil && ![pass  isEqual: @""]) {
        
        [[[DataService dataService] _REF_BASE] authUser:email password:pass withCompletionBlock:^(NSError *error, FAuthData *authData) {
            if (error != nil) {
                NSLog(@"%@" , error);
                if (error.code == -6) {
                    [self showErrorWithTitle:@"Wrong Username or Password" withMessage:@"Chek your spelling and try again"];
                }
                if (error.code == -8) {
                    [[[DataService dataService] _REF_BASE] createUser:email password:pass withValueCompletionBlock:^(NSError *error, NSDictionary *result) {
                        if(error != nil){
                            [self showErrorWithTitle:@"error creating username and password" withMessage:@"try again" ];
                        }else {
                            [[NSUserDefaults standardUserDefaults] setValue:result[@"uid"]   forKey:@"uid"];
                            [[[DataService dataService] _REF_BASE] authUser:email password:pass withCompletionBlock:^(NSError *error, FAuthData *authData) {
                                
                            }];
                            [self performSegueWithIdentifier:@"loggedIN" sender:nil];
                        }

                    }];
                }
                
            }else{
                
//                [[NSUserDefaults standardUserDefaults] setValue:authData  forKey:@"uid"];
                
//                [[[DataService dataService] _REF_BASE] authUser:email password:pass withCompletionBlock:^(NSError *error, FAuthData *authData) {
                
//                }];
                NSLog(@"WTF");
                [self performSegueWithIdentifier:@"loggedIN" sender:nil];
                
            }
        }];
        
    }else{
        
        [self showErrorWithTitle:@"Email and Password required" withMessage:@"you must enter an email and password"];
        
    }

}

-(void)showErrorWithTitle : (NSString*)title withMessage : (NSString *)msg{
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* action =[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:true completion:nil];
}
@end
