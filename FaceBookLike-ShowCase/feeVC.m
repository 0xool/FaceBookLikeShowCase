//
//  feeVC.m
//  FaceBookLike-ShowCase
//
//  Created by CyrusREfahi on 2/30/1395 AP.
//  Copyright © 1395 cyrus refahi. All rights reserved.
//

#import "feeVC.h"
#import "DataService.h"
#import "Post.h"
#import "postCell.h"

@interface feeVC ()

@end

@implementation feeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.Posts = [[NSMutableArray alloc]init];
    self.tableView.dataSource = self;
    
    [[[DataService dataService] _REF_POSTS]  observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot) {
        
       // NSLog(@"%@" , snapshot.value);
        
        FDataSnapshot* snap = snapshot.children.allObjects;
        if (snap != nil) {
            

            
            for (FDataSnapshot* child in snap) {
                
                if (child.value != nil) {
                    NSMutableDictionary<NSString* , id>* postDICT = [[NSMutableDictionary<NSString* , id> alloc]init];
                    postDICT = child.value;
                    
                    NSString* key = child.key;
                    Post* post = [[Post alloc]initWithPostKey:key withDictionary:postDICT];
                    [self.Posts addObject:post];
                }
                
                }
            
        }
        
        [self.tableView reloadData];
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Post* post = self.Posts[indexPath.row];
    postCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"PostCell" ];
    if (cell != nil) {
        [cell configureCellWithPost:post];
        return cell;
    }else {
        return [self.tableView dequeueReusableCellWithIdentifier:@"PostCell"];
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.Posts.count;
    
}


@end
