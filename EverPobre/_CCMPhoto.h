// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CCMPhoto.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@class CCMNote;

@interface CCMPhotoID : NSManagedObjectID {}
@end

@interface _CCMPhoto : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CCMPhotoID *objectID;

@property (nonatomic, strong) NSData* imageData;

@property (nonatomic, strong) NSSet<CCMNote*> *notes;
- (NSMutableSet<CCMNote*>*)notesSet;

@end

@interface _CCMPhoto (NotesCoreDataGeneratedAccessors)
- (void)addNotes:(NSSet<CCMNote*>*)value_;
- (void)removeNotes:(NSSet<CCMNote*>*)value_;
- (void)addNotesObject:(CCMNote*)value_;
- (void)removeNotesObject:(CCMNote*)value_;

@end

@interface _CCMPhoto (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitiveImageData;
- (void)setPrimitiveImageData:(NSData*)value;

- (NSMutableSet<CCMNote*>*)primitiveNotes;
- (void)setPrimitiveNotes:(NSMutableSet<CCMNote*>*)value;

@end

@interface CCMPhotoAttributes: NSObject 
+ (NSString *)imageData;
@end

@interface CCMPhotoRelationships: NSObject
+ (NSString *)notes;
@end

NS_ASSUME_NONNULL_END
