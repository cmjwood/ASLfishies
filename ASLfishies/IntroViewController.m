//
//  IntroViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "IntroViewController.h"


typedef NS_ENUM(NSInteger, TableViewSection) {
    TableViewSectionIntro = 0,
};

@interface IntroViewController ()

//@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong) NSArray *intro;

@end

@implementation IntroViewController


- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tableView.dataSource = self;
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
    return 3;

}




- (IBAction)changePhoto:(id)sender {
}
    - (IBAction)changeButtonTapped:(id)sender {
    }
@end
