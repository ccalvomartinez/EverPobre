//
//  CCMNotebookCellView.h
//  EverPobre
//
//  Created by Administrador on 2/5/17.
//  Copyright © 2017 user126733. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCMNotebookCellView : UITableViewCell

#pragma mark - 	Properties

@property (nonatomic, strong) IBOutlet UILabel *nameView;
@property (nonatomic,strong) IBOutlet UILabel *numberOfNotesView;

#pragma mark - 	Métodos de clase
+(NSString *) cellId;
+(CGFloat) cellHeight;
@end
