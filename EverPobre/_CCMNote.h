// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CCMNote.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

#import "CCMNamedEntity.h"

NS_ASSUME_NONNULL_BEGIN

@class CCMNotebook;
@class CCMPhoto;

@interface CCMNoteID : CCMNamedEntityID {}
@end

@interface _CCMNote : CCMNamedEntity
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CCMNoteID *objectID;

@property (nonatomic, strong, nullable) NSString* text;

@property (nonatomic, strong) CCMNotebook *notebook;

@property (nonatomic, strong, nullable) CCMPhoto *photo;

@end

@interface _CCMNote (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSString*)primitiveText;
- (void)setPrimitiveText:(nullable NSString*)value;

- (CCMNotebook*)primitiveNotebook;
- (void)setPrimitiveNotebook:(CCMNotebook*)value;

- (CCMPhoto*)primitivePhoto;
- (void)setPrimitivePhoto:(CCMPhoto*)value;

@end

@interface CCMNoteAttributes: NSObject 
+ (NSString *)text;
@end

@interface CCMNoteRelationships: NSObject
+ (NSString *)notebook;
+ (NSString *)photo;
@end

NS_ASSUME_NONNULL_END
