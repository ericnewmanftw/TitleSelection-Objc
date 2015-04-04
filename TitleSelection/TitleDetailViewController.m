//
//  TitleDetailViewController.m
//  TitleSelection
//
//  Created by Eric Newman on 4/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TitleDetailViewController.h"
#import "TitleTableViewDataSource.h"

@interface TitleDetailViewController ()

@end

@implementation TitleDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *label = [UILabel new];
    label.frame = self.view.bounds;
    label.text = [TitleTableViewDataSource new].titles[self.index];
    
    [self.view addSubview:label];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
