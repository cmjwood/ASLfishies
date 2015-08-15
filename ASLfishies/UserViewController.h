//
//  UserViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/11/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ViewController.h"

@interface UserViewController : UIViewController
{
    BOOL tapped;
}
@property (weak, nonatomic) IBOutlet UICollectionView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *thumbDown;
@property (weak, nonatomic) IBOutlet UIButton *sendMessage;
@property (weak, nonatomic) IBOutlet UIButton *thumbUp;
- (IBAction)thumbDownTapped:(UISwipeGestureRecognizer *)sender;
- (IBAction)sendMessageTapped:(UISwipeGestureRecognizer *)sender;
- (IBAction)thumbUpTapped:(UISwipeGestureRecognizer *)sender;
- (IBAction)thumbDownSwipe:(UISwipeGestureRecognizer *)sender;
- (IBAction)thumbUpSwipe:(UISwipeGestureRecognizer *)sender;
- (IBAction)rightSwipe:(UISwipeGestureRecognizer *)sender;
- (IBAction)leftSwipe:(UISwipeGestureRecognizer *)sender;

@end
