//
//  MVCView.m
//  MVC_MVP_MVVM
//
//  Created by Rephontil.Zhou. on 2018/12/1.
//  Copyright © 2018 Rephontil.Zhou. All rights reserved.
//

#import "MVCView.h"
#import "MVCModel.h"

@interface MVCView ()
@property (nonatomic, weak) UIImageView *imageView;
@property (nonatomic, weak) UILabel *label;
@end

@implementation MVCView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 120, 150)];
        [self addSubview:imageView];
        _imageView = imageView;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 150, 100, 60)];
        [self addSubview:label];
        _label = label;
    }
    return self;
}


- (void)setMvcModel:(MVCModel *)mvcModel{
    _mvcModel = mvcModel;
    self.imageView.image = [UIImage imageNamed:@"monkey1.png"];
    self.label.text = mvcModel.name;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if ([self.delegate respondsToSelector:@selector(mvcViewDidClicked:)]) {
        [self.delegate mvcViewDidClicked:self];
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
