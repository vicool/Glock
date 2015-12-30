//
//  lockView.h
//  Glock
//
//  Created by 刘家男 on 15/12/18.
//  Copyright © 2015年 刘家男. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol lockViewDelegate <NSObject>

-(void)setPassWordNotice:(NSString *)notice;

@end

@interface lockView : UIView

@property (nonatomic, weak) id<lockViewDelegate> delegate;

@end
