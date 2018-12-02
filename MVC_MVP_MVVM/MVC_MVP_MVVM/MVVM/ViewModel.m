//
//  ViewModel.m
//  MVC_MVP_MVVM
//
//  Created by Rephontil.Zhou. on 2018/12/1.
//  Copyright © 2018 Rephontil.Zhou. All rights reserved.
//

#import "ViewModel.h"
#import "MVVM_Model.h"
#import "MVVM_View.h"

#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)


@interface ViewModel ()<MVVM_ViewDelegate>
@property (weak, nonatomic) UIViewController *controller;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *imageName;
@property (weak, nonatomic) UIView *view;
@end


@implementation ViewModel

- (instancetype)initWithController:(UIViewController *)controller{
    if (self = [super init]) {
        
        self.controller = controller;
        MVVM_View *view = [[MVVM_View alloc] initWithFrame:CGRectMake(100, 100, 150, 200)];
        view.center = CGPointMake(SCREEN_WIDTH / 2, 300);
        [controller.view addSubview:view];
        view.viewModel = self;
        view.delegate = self;
        
        MVVM_Model *model = [[MVVM_Model alloc] init];
        model.name = @"a Monkey";
        model.imageName = @"monkey";
        
        self.name = model.name;
        self.imageName = model.imageName;
        
    }
    return self;
}

- (void)viewDidClicked:(MVVM_View *)view{
    NSLog(@"%s",__func__);
    
    self.imageName = [self.imageName isEqualToString:@"monkey1"] ? @"monkey" : @"monkey1";
}


@end
