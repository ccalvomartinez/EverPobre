#import "CCMNamedEntity.h"

@interface CCMNamedEntity ()

// Private interface goes here.
+(NSArray *) observableKeyNames;
@end

@implementation CCMNamedEntity

+(NSArray *) observableKeyNames{
    return @[@"name",@"CreationDate"];
}
#pragma mark - KVO
-(void) setupKVO{
    
    
    for (NSString *key in [[self class] observableKeyNames]) {
        [self addObserver:self
               forKeyPath:key
                  options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                  context:NULL];
    }
}

-(void) tearDownKVO{
    for (NSString *key in [[self class] observableKeyNames]) {
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

#pragma mark - LifeCycle
// Se ejecuta sólo una vez cuando se crea el objeto
-(void) awakeFromInsert{
    [super awakeFromInsert];
    [self setupKVO];
    NSLog(@"-- Awake From Insert -- %@, %@", self.name, self.objectID);
}

//Se envía cuando se ha creado y cuando vuelve de un fault.
-(void) awakeFromFetch{
    [super awakeFromFetch];
    [self setupKVO];
    NSLog(@"-- Awake From Fetch -- %@, %@", self.name, self.objectID);

}
// Se ejecuta cuando se hace un undo o redo y otro tipo de cambios
-(void) awakeFromSnapshotEvents:(NSSnapshotEventType)flags{
    [super awakeFromSnapshotEvents:flags];
    }
//Se ejecuta cuando se convierte en fault
-(void) willTurnIntoFault{
    [super willTurnIntoFault];
    [self tearDownKVO];
    NSLog(@"-- Turn Down Into Faulr -- %@, %@", self.name, self.objectID);

}
@end
