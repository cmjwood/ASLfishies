//
//  AboutYouViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "AboutYouViewController.h"

@interface AboutYouViewController () <UITextFieldDelegate>

@end

@implementation AboutYouViewController

@synthesize aboutyouBox, maxCharacters;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.aboutyouBox.delegate = self;
    
    [self.aboutyouBox becomeFirstResponder];
    
    // Do any additional setup after loading the view.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *substring = [NSString stringWithString:self.aboutyouBox.text];
    
    if(substring.length > 0) {
        self.maxCharacters.hidden = NO;
        self.maxCharacters.text = [NSString stringWithFormat:@"%lu characters",(unsigned long)substring.length];
    }
    return YES;
}

-(BOOL)textViewShouldEndEditing:(UITextView *)textView {
    NSString *substring = textView.text; //[NSString stringWithString:self.aboutyouBox.text];
    
    if(substring.length > 0) {
        self.maxCharacters.hidden = NO;
        self.maxCharacters.text = [NSString stringWithFormat:@"%lu characters",(unsigned long)substring.length];
    }
    return YES;
}

-(void) textViewDidChange:(UITextView *)textView {
    NSString *substring = [NSString stringWithString:self.aboutyouBox.text];
    
    if(substring.length > 0) {
        self.maxCharacters.hidden = NO;
        self.maxCharacters.text = [NSString stringWithFormat:@"%lu characters",(unsigned long)substring.length];
    }
    if (substring.length == 0) {
        self.maxCharacters.hidden = YES;
    }
    if (substring.length == 15) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message: @"Your message can't be longer than 512 characters" delegate:self cancelButtonTitle: @"OK" otherButtonTitles: nil];
        [alert show];
        self.maxCharacters.textColor = [UIColor redColor];
    }
    
    if (substring.length < 15) {
        self.maxCharacters.textColor = [UIColor blackColor];
    }
    }

- (IBAction)backgroundTap:(id)sender {
    [aboutyouBox resignFirstResponder];
    
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
