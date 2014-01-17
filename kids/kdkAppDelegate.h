//
//  kdkAppDelegate.h
//  kids
//
//  Created by Ellen Hardy on 1/17/14.
//  Copyright (c) 2014 Ellen Hardy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface kdkAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
