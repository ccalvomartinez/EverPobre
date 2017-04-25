#import "_CCMNotebook.h"

@interface CCMNotebook : _CCMNotebook
// Custom logic goes here.
+(instancetype) notebookWithName: (NSString *) name
                         context: (NSManagedObjectContext *) contexto;
@end
