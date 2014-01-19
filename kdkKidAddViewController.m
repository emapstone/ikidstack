//
//  kdkKidAddViewController.m
//  kids
//
//  Created by Ellen Hardy on 1/17/14.
//  Copyright (c) 2014 Ellen Hardy. All rights reserved.
//

#import "kdkKidAddViewController.h"
#import "kdkKid.h"

@interface kdkKidAddViewController ()


@end

@implementation kdkKidAddViewController

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (IBAction)save:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    // Create a new managed object
    NSManagedObject *newKid = [NSEntityDescription insertNewObjectForEntityForName:@"Kid" inManagedObjectContext:context];
    //stopped here - trying to set values. It has something to do with where the kid object
    //type is set up. I might have to pull all those kid fields into this conroller
    //that is what to do next. I think it's okay to have them in multiple controller.
    //not enough to just pull the kdkKid into the header file.
    [newKid setValue:self.kidName.text forKey:@"name"];
    [newKid setValue:self.kidFavoriteColor.text forKey:@"favorite_color"];
    [newKid setValue:self.kidFavoriteToy.text forKey:@"favorite_toy"];
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
