//
//  SecondVC.m
//  Protocol
//
//  Created by Quix Creations Singapore iOS 1 on 14/8/15.
//  Copyright (c) 2015 Terry Chia. All rights reserved.
//

#import "SecondVC.h"
#import "FirstVCViewController.h"

@interface SecondVC ()

@end

@implementation SecondVC
@synthesize delegate,firstNameString,lastNameString,passedMessage;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _messageLabel.text = passedMessage;
}

- (void)didReceiveMemoryWarning
{
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



- (IBAction)cancel:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(UIBarButtonItem *)sender {
    
    //Alert if firstName is empty
    if ([_firstName.text isEqualToString:@""]) {
        UIAlertView *firstNameAlert = [[UIAlertView alloc]initWithTitle:@"Field Check"
                                                       message:@"First name is required"
                                                      delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil , nil];
        [firstNameAlert show];
        return;
    }
    
    firstNameString = _firstName.text;
    [[self delegate]setFirstName:firstNameString];
    
    lastNameString = _lastName.text;
    [[self delegate]setLastName:lastNameString];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
