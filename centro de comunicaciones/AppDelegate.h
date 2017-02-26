//
//  AppDelegate.h
//  centro de comunicaciones
//
//  Created by Darwin Morales on 26/2/17.
//  Copyright © 2017 Darwin Morales. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

