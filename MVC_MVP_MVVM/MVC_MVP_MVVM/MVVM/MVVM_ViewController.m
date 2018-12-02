//
//  MVVM_ViewController.m
//  MVC_MVP_MVVM
//
//  Created by Rephontil.Zhou. on 2018/12/1.
//  Copyright © 2018 Rephontil.Zhou. All rights reserved.
//

#import "MVVM_ViewController.h"
#import "ViewModel.h"

@interface MVVM_ViewController ()

@property (nonatomic, strong) ViewModel *viewModel;

@end

@implementation MVVM_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[ViewModel alloc] initWithController:self];
    // Do any additional setup after loading the view.
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
