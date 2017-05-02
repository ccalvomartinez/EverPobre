#import "CCMNote.h"

@interface CCMNote ()

// Private interface goes here.

@end

@implementation CCMNote

// Custom logic goes here.
+(instancetype) noteWithName: (NSString *) name
                    notebook: (CCMNotebook *) notebook
                     context:(NSManagedObjectContext *) contexto{
CCMNote *note = [NSEntityDescription insertNewObjectForEntityForName:@"Note"
                                              inManagedObjectContext:contexto];
    
    note.creationDate = [NSDate date];
    note.modificaionDate = [NSDate date];
    note.notebook = notebook;
    note.name = name;
    
    return note;
}
+(NSArray *) observableKeyNames{
    return @[@"creationDate",@"name",@"notebook",@"photo"];
}

@end
