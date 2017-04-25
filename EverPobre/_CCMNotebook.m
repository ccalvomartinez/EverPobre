// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CCMNotebook.m instead.

#import "_CCMNotebook.h"

@implementation CCMNotebookID
@end

@implementation _CCMNotebook

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Notebook" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Notebook";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Notebook" inManagedObjectContext:moc_];
}

- (CCMNotebookID*)objectID {
	return (CCMNotebookID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic notes;

- (NSMutableSet<CCMNote*>*)notesSet {
	[self willAccessValueForKey:@"notes"];

	NSMutableSet<CCMNote*> *result = (NSMutableSet<CCMNote*>*)[self mutableSetValueForKey:@"notes"];

	[self didAccessValueForKey:@"notes"];
	return result;
}

@end

@implementation CCMNotebookRelationships 
+ (NSString *)notes {
	return @"notes";
}
@end

