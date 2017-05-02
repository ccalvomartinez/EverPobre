//
//  CCMNotebooksViewController.m
//  EverPobre
//
//  Created by Administrador on 2/5/17.
//  Copyright © 2017 user126733. All rights reserved.
//

#import "CCMNotebooksViewController.h"
#import "CCMNotebook.h"
#import "CCMNotebookCellView.h"
@interface CCMNotebooksViewController ()

@end

@implementation CCMNotebooksViewController

#pragma mark - 	Life Cycle
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.title = @"EverPobre";
    
    //Crear un botón con un target y un action
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                               target:self
                                                                               action:@selector(addNotebook:)];
    
    // Lo añadimos a la barra de navegación
    self.navigationItem.rightBarButtonItem=addButton;
    
    //Ponemos el botón de edición
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    //Alta en notificacion de sensor de proximidad
    UIDevice *dev = [UIDevice currentDevice];
    if([self hasProximitySensor]){
        [dev setProximityMonitoringEnabled:YES];
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        [center addObserver:self
                   selector:@selector(proximityStateDidChange:)
                       name:UIDeviceProximityStateDidChangeNotification
                     object:nil];
        
    }
    
    
    //Registramos el nib de las celdas
    UINib *cellNib = [UINib nibWithNibName:@"CCMNotebookCellView"
                                    bundle:nil];
    
    [self.tableView registerNib:cellNib
         forCellReuseIdentifier:[CCMNotebookCellView cellId]];
    
}
-(void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
     NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center removeObserver:self];
}
#pragma mark - 	Actions

-(void) addNotebook:(id) sender{
    // Crear una libreta y el FetchedResultController actualiza la tabla automáticamente.
    [CCMNotebook notebookWithName:@"New notebook"
                                           context:self.fetchedResultsController.managedObjectContext];
}

#pragma mark - 	Data Souce

-(void) tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete){
    //Obtener la celda correspondiente a la celda
        CCMNotebook *delNb = [self.fetchedResultsController objectAtIndexPath:indexPath];
        
        //Quitar del modelo
        [self.fetchedResultsController.managedObjectContext deleteObject:delNb];
    }
}

-(UITableViewCell *) tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //Averiguar el notebook
    CCMNotebook *notebook = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    //Crear una celda
   
    CCMNotebookCellView *cell = [tableView dequeueReusableCellWithIdentifier:[CCMNotebookCellView cellId]];
    
    
    //Sincronizar modelo con vista (libreta -> celda)
    cell.nameView.text = notebook.name;
    cell.numberOfNotesView.text = [NSString stringWithFormat:@"%lu",(unsigned long)notebook.notes.count];
    //Devolver la celda
    return cell;
}
#pragma mark - 	TableView Delegate
-(CGFloat) tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [CCMNotebookCellView cellHeight];
}


#pragma mark - 	Sensors

-(BOOL) hasProximitySensor{
    UIDevice *dev = [UIDevice currentDevice];
    BOOL oldValue = [dev isProximityMonitoringEnabled];
    [dev setProximityMonitoringEnabled:!oldValue];
    BOOL newValue = [dev isProximityMonitoringEnabled];
    
    [dev setProximityMonitoringEnabled:oldValue];
    
    return (oldValue != newValue);
}
//UIDeviceProximityStateDidChangeNotification
-(void) proximityStateDidChange:(NSNotification *) notification{
    [self.fetchedResultsController.managedObjectContext.undoManager undo];
}
@end
