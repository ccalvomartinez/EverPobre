//
//  AppDelegate.m
//  EverPobre
//
//  Created by user126733 on 11/4/17.
//  Copyright © 2017 user126733. All rights reserved.
//

#import "AppDelegate.h"
#import "AGTSimpleCoreDataStack.h"
#import "CCMNotebook.h"
#import "CCMNote.h"
#import "CCMNotebooksViewController.h"
#import "UIViewController+Navigation.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    //Crear una instancia del modelo de datos
    
    self.model = [AGTSimpleCoreDataStack coreDataStackWithModelName:@"EverPobreModel"];
    
    //Iniciamos el autoguardar
    [self autoSave];
    
    // Override point for customization after application launch.
    self.window=[[UIWindow alloc] init];
    
    NSFetchRequest *req = [NSFetchRequest fetchRequestWithEntityName:[CCMNotebook entityName]];
    
    req.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:[CCMNamedEntityAttributes name]
                                                          ascending:NO],
                            [NSSortDescriptor sortDescriptorWithKey:[CCMNamedEntityAttributes modificaionDate]
                                                          ascending:YES]];
    NSFetchedResultsController *resultsC = [[NSFetchedResultsController alloc] initWithFetchRequest:req
                                                                               managedObjectContext:self.model.context
                                                                                 sectionNameKeyPath:nil
                                                                                          cacheName:nil];
    
    CCMNotebooksViewController *nbVC = [[CCMNotebooksViewController alloc] initWithFetchedResultsController:resultsC
                                                                                                      style:UITableViewStylePlain];
   
    
    self.window.rootViewController=[nbVC wrappedInNavigation];
    
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    [self save];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [self save];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"Adios mundo cruel");
}

#pragma mark - Pruebas
-(void) trastearConDatos{
    CCMNotebook *novias = [CCMNotebook notebookWithName:@"Exnovias para el recuerdo"
                                                context:self.model.context];
    [CCMNote noteWithName:@"camila"
                 notebook:novias
                  context:self.model.context];
   CCMNote *pampita =  [CCMNote noteWithName:@"pampita"
                 notebook:novias
                  context:self.model.context];
    
    //Buscar
    NSFetchRequest *req = [[NSFetchRequest alloc] initWithEntityName:[CCMNote entityName]];
    req.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:[CCMNamedEntityAttributes name]
                                                          ascending:YES],
                            [NSSortDescriptor sortDescriptorWithKey:[CCMNamedEntityAttributes modificaionDate]
                                                          ascending:NO]];
   
    NSArray *results = [self.model executeRequest:req
                                        withError:^(NSError *error){
                                            NSLog(@"Error al buscar %s \n\n %@",__func__,error);
                                        }];
    NSLog(@"Results %@",results);
    
    //Eliminamos un objero
    [self.model.context deleteObject:pampita];
//Guardamos
    
    [self save];
}
-(void) save{
    [self.model saveWithErrorBlock:^(NSError *error){
        NSLog(@"Error al guardar %s \n\n %@", __func__,error);
    }];
}

-(void) autoSave{
    if(AUTO_SAVE){
        NSLog(@"Autoguardando...");
        [self save];
        
        [self performSelector:@selector(autoSave)
                   withObject:nil
                   afterDelay:AUTO_SAVE_DELAY_IN_SECONDS];
    }
   
}
@end
