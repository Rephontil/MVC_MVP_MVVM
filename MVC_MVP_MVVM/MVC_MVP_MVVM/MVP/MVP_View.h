//
//  MVP_View.h
//  MVC_MVP_MVVM
//
//  Created by Rephontil.Zhou. on 2018/12/1.
//  Copyright © 2018 Rephontil.Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MVP_View;
@protocol MVP_ViewDelegate <NSObject>

@optional
- (void)viewDidClicked:(MVP_View *)view;

@end

NS_ASSUME_NONNULL_BEGIN

@interface MVP_View : UIView
@property (nonatomic, weak) id<MVP_ViewDelegate> delegate;

- (void)setImageName:(NSString *)imageName introduction:(NSString *)introduction;
@end

NS_ASSUME_NONNULL_END
