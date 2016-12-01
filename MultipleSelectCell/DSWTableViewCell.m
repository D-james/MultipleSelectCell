//
//  DSWTableViewCell.m
//  MultipleSelectCell
//
//  Created by cuctv-duan on 16/12/1.
//  Copyright © 2016年 D.James. All rights reserved.
//

#import "DSWTableViewCell.h"

@implementation DSWTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)layoutSubviews
{
   
    for (UIControl *control in self.subviews){
        if ([control isMemberOfClass:NSClassFromString(@"UITableViewCellEditControl")]){
            for (UIView *view in control.subviews)
            {
                if ([view isKindOfClass: [UIImageView class]]) {
                    UIImageView *image=(UIImageView *)view;
                    if (self.selected) {
                        image.image=[UIImage imageNamed:@"CellButtonSelected"];
                    }
                    else
                    {
                        image.image=[UIImage imageNamed:@"CellButton"];
                    }
                }
            }
        }
    }
    
    [super layoutSubviews];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
        for (UIControl *control in self.subviews){
            if ([control isMemberOfClass:NSClassFromString(@"UITableViewCellEditControl")]){
                for (UIView *view in control.subviews)
                {
                    if ([view isKindOfClass: [UIImageView class]]) {
                        UIImageView *image=(UIImageView *)view;
                        if (!self.selected) {
                            image.image=[UIImage imageNamed:@"CellButton"];
                        }
                    }
                }
            }
        }
    
}
@end
