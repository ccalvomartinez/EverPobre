#import "_CCMPhoto.h"
@import UIKit;
@interface CCMPhoto : _CCMPhoto
// Custom logic goes here.
@property (nonatomic,strong) UIImage *image;
+(instancetype) photoWithImage: (UIImage *) image
                    andContext: (NSManagedObjectContext *) contexto;
@end
