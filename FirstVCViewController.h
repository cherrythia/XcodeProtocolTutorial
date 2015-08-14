//
//  FirstVCViewController.h
//  Protocol
//
//  Created by Quix Creations Singapore iOS 1 on 14/8/15.
//  Copyright (c) 2015 Terry Chia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondVC.h"

@interface FirstVCViewController : UIViewController <passNames>

@property (nonatomic,strong) NSString *firstNameString;
@property (nonatomic,strong) NSString *lastNameString;

@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *messageBox;

@end
