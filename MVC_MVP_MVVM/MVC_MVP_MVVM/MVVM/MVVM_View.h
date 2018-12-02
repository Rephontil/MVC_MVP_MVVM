//
//  MVVM_View.h
//  MVC_MVP_MVVM
//
//  Created by Rephontil.Zhou. on 2018/12/1.
//  Copyright © 2018 Rephontil.Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MVVM_View, ViewModel;

@protocol MVVM_ViewDelegate <NSObject>
@optional
- (void)viewDidClicked:(MVVM_View *)view;
@end

NS_ASSUME_NONNULL_BEGIN

@interface MVVM_View : UIView
@property (nonatomic, weak) ViewModel *viewModel;
@property (nonatomic, weak) id<MVVM_ViewDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
