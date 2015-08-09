//
//  IntroViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "IntroViewController.h"
#import "IntroTableViewCell.h"
#import "Intro.h"

typedef NS_ENUM(NSInteger, TableViewSection) {
    TableViewSectionIntro = 0,
};

@interface IntroViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong) NSArray *intro;

@end

@implementation IntroViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"iPhone 6.png"]]];
    // Do any additional setup after loading the view.
    
  
//    self.intro = @[
//                   [Intro fullIntro:@"Full name" enabled:YES],
//                   [Intro fullIntro:@"Email address" enabled:YES],
//                   [Intro fullIntro:@"City, State" enabled:YES],
//                   [Intro fullIntro:@"Country" enabled:YES],
//                   [Intro fullIntro:@"Age" enabled:YES]
//                   ];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)registerTableView:(UITableView *)tableView {
//    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    IntroTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    [cell setBackgroundColor:[UIColor grayColor]];
    if (indexPath.row == 0) {
        cell.introPlaceholder.placeholder = @"Full Name";
    } else if (indexPath.row == 1) {
        cell.introPlaceholder.placeholder = @"Email address";
    } else if (indexPath.row ==2) {
    cell.introPlaceholder.placeholder = @"City, State";
    } else if (indexPath.row ==3) {
        cell.introPlaceholder.placeholder = @"Country";
    } else if (indexPath.row ==4) {
        cell.introPlaceholder.placeholder = @"Age";
    }
    return cell;
}



@end
