// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CCMNote.m instead.

#import "_CCMNote.h"

@implementation CCMNoteID
@end

@implementation _CCMNote

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Note" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Note";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Note" inManagedObjectContext:moc_];
}

- (CCMNoteID*)objectID {
	return (CCMNoteID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic text;

@dynamic notebook;

@dynamic photo;

@end

@implementation CCMNoteAttributes 
+ (NSString *)text {
	return @"text";
}
@end

@implementation CCMNoteRelationships 
+ (NSString *)notebook {
	return @"notebook";
}
+ (NSString *)photo {
	return @"photo";
}
@end

