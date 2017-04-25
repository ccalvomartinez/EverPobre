// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CCMNotebook.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

#import "CCMNamedEntity.h"

NS_ASSUME_NONNULL_BEGIN

@class CCMNote;

@interface CCMNotebookID : CCMNamedEntityID {}
@end

@interface _CCMNotebook : CCMNamedEntity
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CCMNotebookID *objectID;

@property (nonatomic, strong) NSSet<CCMNote*> *notes;
- (NSMutableSet<CCMNote*>*)notesSet;

@end

@interface _CCMNotebook (NotesCoreDataGeneratedAccessors)
- (void)addNotes:(NSSet<CCMNote*>*)value_;
- (void)removeNotes:(NSSet<CCMNote*>*)value_;
- (void)addNotesObject:(CCMNote*)value_;
- (void)removeNotesObject:(CCMNote*)value_;

@end

@interface _CCMNotebook (CoreDataGeneratedPrimitiveAccessors)

- (NSMutableSet<CCMNote*>*)primitiveNotes;
- (void)setPrimitiveNotes:(NSMutableSet<CCMNote*>*)value;

@end

@interface CCMNotebookRelationships: NSObject
+ (NSString *)notes;
@end

NS_ASSUME_NONNULL_END
