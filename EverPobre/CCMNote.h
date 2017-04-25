#import "_CCMNote.h"

@interface CCMNote : _CCMNote
// Custom logic goes here.

+(instancetype) noteWithName: (NSString *) name
                    notebook: (CCMNotebook *) notebook
                     context:(NSManagedObjectContext *) contexto;
@end
