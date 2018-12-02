//
//  MVP_View.m
//  MVC_MVP_MVVM
//
//  Created by Rephontil.Zhou. on 2018/12/1.
//  Copyright © 2018 Rephontil.Zhou. All rights reserved.
//

#import "MVP_View.h"

@interface MVP_View ()
@property (nonatomic, weak) UIImageView *imageView;
@property (nonatomic, weak) UILabel *label;
@end

@implementation MVP_View

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

- (void)setImageName:(NSString *)imageName introduction:(NSString *)introduction{
    self.imageView.image = [UIImage imageNamed:imageName];
    self.label.text = introduction;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if ([self.delegate respondsToSelector:@selector(viewDidClicked:)]) {
        [self.delegate viewDidClicked:self];
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
