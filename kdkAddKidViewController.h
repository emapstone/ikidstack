//
//  kdkAddKidViewController.h
//  kids
//
//  Created by Ellen Hardy on 1/17/14.
//  Copyright (c) 2014 Ellen Hardy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface kdkAddKidViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *kidName;
@property (weak, nonatomic) IBOutlet UITextField *kidFavoriteColor;
@property (weak, nonatomic) IBOutlet UITextField *kidFavoriteToy;
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end
