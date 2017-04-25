// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CCMPhoto.m instead.

#import "_CCMPhoto.h"

@implementation CCMPhotoID
@end

@implementation _CCMPhoto

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Photo" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Photo";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Photo" inManagedObjectContext:moc_];
}

- (CCMPhotoID*)objectID {
	return (CCMPhotoID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic imageData;

@dynamic notes;

- (NSMutableSet<CCMNote*>*)notesSet {
	[self willAccessValueForKey:@"notes"];

	NSMutableSet<CCMNote*> *result = (NSMutableSet<CCMNote*>*)[self mutableSetValueForKey:@"notes"];

	[self didAccessValueForKey:@"notes"];
	return result;
}

@end

@implementation CCMPhotoAttributes 
+ (NSString *)imageData {
	return @"imageData";
}
@end

@implementation CCMPhotoRelationships 
+ (NSString *)notes {
	return @"notes";
}
@end

