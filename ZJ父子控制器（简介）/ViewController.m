//
//  ViewController.m
//  ZJ父子控制器（简介）
//
//  Created by base on 15/09/19.
//  Copyright © 2015年 base. All rights reserved.
//

#import "ViewController.h"
#import "SocietyController.h"
#import "TopTitleViewController.h"
#import "HotPointController.h"

@interface ViewController ()

@property (nonatomic,strong) SocietyController *society;
@property (nonatomic,strong) TopTitleViewController *topTitle;
@property (nonatomic,strong) HotPointController *hotPoint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)society:(UIButton *)sender {
    
    //判断下，如果社会这个控制器为空，就创建
    if (_society == nil) {
        //创建控制器
        SocietyController *society = [[SocietyController alloc] init];
        society.view.backgroundColor = sender.backgroundColor;
        
        //设置控制器的尺寸
        CGFloat y = 64;
        CGFloat h = [UIScreen mainScreen].bounds.size.height - y;
        society.view.frame = CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, h);
        
        self.society = society;
        
    }
    //把控制器的view添加到控制器的view上面
       [self.view addSubview:_society.view];
    
}


- (IBAction)topTitle:(UIButton *)sender {
    
    //判断下有没有控制器，没有就创建
    if(_topTitle == nil)
    {
        TopTitleViewController *topTitle = [[TopTitleViewController alloc] init];
        topTitle.view.backgroundColor = sender.backgroundColor;
        
        //设置控制器的尺寸
        CGFloat y = 64;
        CGFloat h = [UIScreen mainScreen].bounds.size.height - y;
        topTitle.view.frame = CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, h);
        self.topTitle = topTitle;
     }
        [self.view addSubview:_topTitle.view];

}

- (IBAction)hotPoint:(UIButton *)sender {
    
    //判断下有没有控制器，没有创建
    if (_hotPoint == nil) {
        HotPointController *hotPoint = [[HotPointController alloc] init];
        hotPoint.view.backgroundColor = sender.backgroundColor;
        
        //设置控制器的尺寸
        CGFloat y = 64;
        CGFloat h = [UIScreen mainScreen].bounds.size.height - y;
        hotPoint.view.frame = CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, h);
        self.hotPoint = hotPoint;
    }
    [self.view addSubview:_hotPoint.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
