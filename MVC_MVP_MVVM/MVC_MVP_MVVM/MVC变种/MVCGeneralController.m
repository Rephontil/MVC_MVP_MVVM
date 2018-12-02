//
//  MVCGeneralController.m
//  MVC_MVP_MVVM
//
//  Created by Rephontil.Zhou. on 2018/12/1.
//  Copyright © 2018 Rephontil.Zhou. All rights reserved.
//

#import "MVCGeneralController.h"
#import "MVCModel.h"
#import "MVCView.h"

#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)


@interface MVCGeneralController ()<MVCViewDelegate>

@end


@implementation MVCGeneralController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    MVCView *view = [[MVCView alloc] initWithFrame:CGRectMake(100, 100, 150, 200)];
    view.center = CGPointMake(SCREEN_WIDTH / 2, 300);
    [self.view addSubview:view];
    view.delegate = self;
    
    MVCModel *model = [[MVCModel alloc] init];
    model.name = @"a Monkey";
    model.imageName = @"monkey";
    
    view.mvcModel = model;
}

-(void)mvcViewDidClicked:(MVCView *)view{
    NSLog(@"%s",__func__);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
