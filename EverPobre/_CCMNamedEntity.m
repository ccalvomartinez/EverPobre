// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CCMNamedEntity.m instead.

#import "_CCMNamedEntity.h"

@implementation CCMNamedEntityID
@end

@implementation _CCMNamedEntity

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"NamedEntity" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"NamedEntity";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"NamedEntity" inManagedObjectContext:moc_];
}

- (CCMNamedEntityID*)objectID {
	return (CCMNamedEntityID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic creationDate;

@dynamic modificaionDate;

@dynamic name;

@end

@implementation CCMNamedEntityAttributes 
+ (NSString *)creationDate {
	return @"creationDate";
}
+ (NSString *)modificaionDate {
	return @"modificaionDate";
}
+ (NSString *)name {
	return @"name";
}
@end

