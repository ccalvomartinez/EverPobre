//
//  CCMNotebookCellView.m
//  EverPobre
//
//  Created by Administrador on 2/5/17.
//  Copyright © 2017 user126733. All rights reserved.
//

#import "CCMNotebookCellView.h"

@implementation CCMNotebookCellView

#pragma mark - 	Métodos de clase
+(NSString *) cellId{
    return NSStringFromClass(self);
}
+(CGFloat) cellHeight{
    return 60.0f;
}



@end
