#import "CCMPhoto.h"

@interface CCMPhoto ()

// Private interface goes here.

@end

@implementation CCMPhoto

#pragma mark - Properties
-(void) setImage:(UIImage *)image{
    
    //Sincronizar con imageData
    self.imageData=UIImagePNGRepresentation(image);

}

-(UIImage *) image{
    
        return  [UIImage imageWithData:self.imageData];
   
}

#pragma mark - Class Methods
+(instancetype) photoWithImage: (UIImage *) image
                    andContext: (NSManagedObjectContext *) contexto{

CCMPhoto *p = [NSEntityDescription insertNewObjectForEntityForName:[CCMPhoto entityName]
                                            inManagedObjectContext:contexto];
    
    p.imageData = UIImageJPEGRepresentation(image, 0.9);
    
    
    return p;
    
}

@end
