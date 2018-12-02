//
//  Presenter.m
//  MVC_MVP_MVVM
//
//  Created by Rephontil.Zhou. on 2018/12/1.
//  Copyright © 2018 Rephontil.Zhou. All rights reserved.
//

#import "Presenter.h"
#import "MVP_View.h"
#import "MVP_Model.h"

#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)

@interface Presenter ()<MVP_ViewDelegate>

@property (nonatomic, weak) UIViewController *controller;
@end

@implementation Presenter

- (instancetype)initWithController:(UIViewController *)controller{
    
    if (self = [super init]) {
        
        self.controller = controller;
        
        MVP_View *view = [[MVP_View alloc] initWithFrame:CGRectMake(100, 100, 150, 200)];
        view.center = CGPointMake(SCREEN_WIDTH / 2, 300);
        [controller.view addSubview:view];
        view.delegate = self;
        
        MVP_Model *model = [[MVP_Model alloc] init];
        model.name = @"a Monkey";
        model.imageName = @"monkey1";
        
        [view setImageName:model.imageName introduction:model.name];
    }
    
    return self;
}

- (void)viewDidClicked:(MVP_View *)view{
    NSLog(@"%s",__func__);
}


@end
