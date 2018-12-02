//
//  MVCView.h
//  MVC_MVP_MVVM
//
//  Created by Rephontil.Zhou. on 2018/12/1.
//  Copyright © 2018 Rephontil.Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MVCModel, MVCView;


@protocol MVCViewDelegate <NSObject>

@optional
- (void)mvcViewDidClicked:(MVCView *)view;

@end

NS_ASSUME_NONNULL_BEGIN

@interface MVCView : UIView

@property (nonatomic, strong) MVCModel *mvcModel;
@property (nonatomic, weak) id<MVCViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
