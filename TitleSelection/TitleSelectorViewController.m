//
//  TitleSelectorViewController.m
//  TitleSelection
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "TitleSelectorViewController.h"
#import "TitleTableViewDataSource.h"
#import "TitleDetailViewController.h"


@interface TitleSelectorViewController () <UITableViewDelegate> //First need to add delegate protocal. this allows us to bring in some methods.


@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) TitleTableViewDataSource *dataSource;


@end

@implementation TitleSelectorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dataSource = [TitleTableViewDataSource new];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.delegate = self; //This means that the tableview that lives on this view controller can find delegate methods and respond accordingly.
    self.tableView.dataSource = self.dataSource;
    [self.view addSubview:self.tableView];
    
}


-(void)tableView:(UITableView *)tableView
    didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    TitleDetailViewController *viewController = [TitleDetailViewController new];
    
    viewController.index = indexPath.row;
    
    
    [self.navigationController pushViewController:viewController animated:YES];
    
    
}




@end
