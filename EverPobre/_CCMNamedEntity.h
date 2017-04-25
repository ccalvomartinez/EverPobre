// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CCMNamedEntity.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface CCMNamedEntityID : NSManagedObjectID {}
@end

@interface _CCMNamedEntity : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CCMNamedEntityID *objectID;

@property (nonatomic, strong) NSDate* creationDate;

@property (nonatomic, strong) NSDate* modificaionDate;

@property (nonatomic, strong) NSString* name;

@end

@interface _CCMNamedEntity (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSDate*)primitiveModificaionDate;
- (void)setPrimitiveModificaionDate:(NSDate*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

@end

@interface CCMNamedEntityAttributes: NSObject 
+ (NSString *)creationDate;
+ (NSString *)modificaionDate;
+ (NSString *)name;
@end

NS_ASSUME_NONNULL_END
