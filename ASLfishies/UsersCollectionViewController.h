//
//  UsersCollectionViewController.h
//  ASLfish
//
//  Created by Casey Wood on 8/18/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UsersCollectionViewController : UICollectionViewController

{
    BOOL tapped;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *thumbDown;
@property (weak, nonatomic) IBOutlet UIButton *sendMessage;
@property (weak, nonatomic) IBOutlet UIButton *thumbUp;
- (IBAction)thumbDownTapped:(UISwipeGestureRecognizer *)sender;
- (IBAction)thumbUpTapped:(UISwipeGestureRecognizer *)sender;
- (IBAction)rightSwipe:(UISwipeGestureRecognizer *)sender;
- (IBAction)leftSwipe:(UISwipeGestureRecognizer *)sender;
- (IBAction)sendMessageTapped:(id)sender;

@end
