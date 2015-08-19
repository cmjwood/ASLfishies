//
//  UsersCollectionViewController.m
//  ASLfish
//
//  Created by Casey Wood on 8/18/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "UsersCollectionViewController.h"

@interface UsersCollectionViewController ()

@end

@implementation UsersCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

@synthesize thumbDown;
@synthesize thumbUp;
@synthesize sendMessage;
@synthesize imageView;


- (IBAction)thumbDownSwipe:(id)sender {
    NSLog(@"Swiped Left");
}

- (IBAction)thumbUpSwipe:(id)sender {
    NSLog(@"Swiped Right");
}

- (IBAction)rightSwipe:(id)sender {
    NSLog(@"Swiped Right");
}

- (IBAction)leftSwipe:(id)sender {
    NSLog(@"Swiped Left");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete method implementation -- Return the number of sections
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete method implementation -- Return the number of items in the section
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

- (IBAction)thumbDownTapped:(id)sender {
    if (!tapped) {
        
        [thumbDown setImage: [UIImage imageNamed: @"Poor Quality-50.png"] forState: UIControlStateNormal];
        
        tapped = YES;
        
    }
    else if (tapped) {
        
        [thumbDown setImage: [UIImage imageNamed: @"Poor Quality Filled-50.png"] forState: UIControlStateNormal];
        
        tapped = NO;
        
    }
    
}

- (IBAction)sendMessageTapped:(id)sender {
    if (!tapped) {
        
        [sendMessage setImage: [UIImage imageNamed: @"Speech Bubble-50 copy.png"] forState: UIControlStateNormal];
        
        tapped = YES;
        
    }
    else if (tapped) {
        
        [sendMessage setImage: [UIImage imageNamed: @"Speech Bubble Filled-50.png"] forState: UIControlStateNormal];
        
        tapped = NO;
        
    }
    
}

- (IBAction)thumbUpTapped:(id)sender {
    if (!tapped) {
        
        [thumbUp setImage: [UIImage imageNamed: @"Good Quality-50.png"] forState: UIControlStateNormal];
        
        tapped = YES;
        
    }
    else if (tapped) {
        
        [thumbUp setImage: [UIImage imageNamed: @"Good Quality Filled-50.png"] forState: UIControlStateNormal];
        
        tapped = NO;
        
    }
}



#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
