//
//  UIViewController+Navigation.m
//  EverPobre
//
//  Created by Administrador on 2/5/17.
//  Copyright © 2017 user126733. All rights reserved.
//

#import "UIViewController+Navigation.h"

@implementation UIViewController (Navigation)

-(UINavigationController *) wrappedInNavigation{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:self];
    return  nav;
}

@end
