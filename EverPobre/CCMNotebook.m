#import "CCMNotebook.h"

@interface CCMNotebook ()

// Private interface goes here.
+(NSArray *) observableKeyNames;
@end

@implementation CCMNotebook

// Custom logic goes here.
+(instancetype) notebookWithName: (NSString *) name
                         context: (NSManagedObjectContext *) contexto{
CCMNotebook *notebook = [NSEntityDescription insertNewObjectForEntityForName:@"Notebook"
                                                      inManagedObjectContext:contexto];
    notebook.creationDate = [NSDate date];
    notebook.modificaionDate = [NSDate date];
    notebook.name = name;
    
    return notebook;
}

+(NSArray *) observableKeyNames{
    return @[@"creationDate",@"name",@"notes"];
}

@end


