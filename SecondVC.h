//
//  SecondVC.h
//  Protocol
//
//  Created by Quix Creations Singapore iOS 1 on 14/8/15.
//  Copyright (c) 2015 Terry Chia. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol passNames <NSObject>
-(void)setFirstName : (NSString *)firstName;
-(void)setLastName: (NSString *)lastName;
@end

@interface SecondVC : UIViewController

- (IBAction)save:(UIBarButtonItem *)sender;
- (IBAction)cancel:(UIBarButtonItem *)sender;

@property(retain)id <passNames> delegate;
@property(nonatomic,strong) NSString *firstNameString;
@property(nonatomic,strong) NSString *lastNameString;

@property(nonatomic,strong) NSString *passedMessage;

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;

@end
