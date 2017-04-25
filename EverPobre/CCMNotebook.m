#import "CCMNotebook.h"

@interface CCMNotebook ()

// Private interface goes here.
+(NSArray *) observableKeyNames;
@end

@implementation CCMNotebook

// Custom logic goes here.
+(instancetype) notebookWithName: (NSString *) name
                         context: (NSManagedObjectContext *) contexto{
CCMNotebook *notebook = [NSEntityDescription insertNewObjectForEntityForName:@"Noteook"
                                                      inManagedObjectContext:contexto];
    notebook.creationDate = [NSDate date];
    notebook.modificaionDate = [NSDate date];
    notebook.name = name;
    
    return notebook;
}

+(NSArray *) observableKeyNames{
    return @[@"creationDate",@"name",@"notes"];
}

#pragma mark - KVO
-(void) setupKVO{

   
    for (NSString *key in [CCMNotebook observableKeyNames]) {
        [self addObserver:self
               forKeyPath:key
                  options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                  context:NULL];
    }
}

-(void) tearDownKVO{
    for (NSString *key in [CCMNotebook observableKeyNames]) {
        [self removeObserver:self
                  forKeyPath:key];
    }
}

-(void) observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSKeyValueChangeKey,id> *)change
                       context:(void *)context{

    self.modificaionDate=[NSDate date];

}
@end


