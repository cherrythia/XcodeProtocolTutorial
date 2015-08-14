//
//  FirstVCViewController.m
//  Protocol
//
//  Created by Quix Creations Singapore iOS 1 on 14/8/15.
//  Copyright (c) 2015 Terry Chia. All rights reserved.
//

#import "FirstVCViewController.h"

@interface FirstVCViewController ()

@end

@implementation FirstVCViewController
@synthesize firstNameString,lastNameString;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier]isEqualToString:@"vc2"]) {
        
        UINavigationController *navController = segue.destinationViewController;
        
        SecondVC *vc2 = (SecondVC*)navController.topViewController;
        
        NSString *passedMessage = _messageBox.text;
        
        vc2.passedMessage = passedMessage;
        
        [vc2 setDelegate:self];
        
    }
}

-(void)viewWillAppear:(BOOL)animated {
    _firstNameLabel.text = firstNameString;
    _lastNameLabel.text = lastNameString;
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

#pragma mark - Protocol Methods
-(void)setFirstName :(NSString *)firstName {
    firstNameString = firstName;
}
-(void)setLastName: (NSString *) lastName{
    lastNameString = lastName;
}

@end
