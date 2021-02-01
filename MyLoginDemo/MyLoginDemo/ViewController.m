//
//  ViewController.m
//  MyLoginDemo
//
//  Created by 乔春晓 on 2021/1/25.
//

#import "ViewController.h"
#import "MyLogin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(0, 0, 200, 50);
    btn.tag = 100;
    btn.center = self.view.center;
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"ALoginViewController" forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
    UIButton *btn2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn2.frame = CGRectMake(0, 0, 200, 50);
    btn2.tag = 200;
    btn2.center = CGPointMake(self.view.center.x, 100);
    [btn2 setBackgroundColor:[UIColor redColor]];
    [btn2 setTitle:@"BLoginViewController" forState:(UIControlStateNormal)];
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn2];
    
}

- (void)btnClick:(UIButton *)btn {
    if (btn.tag == 100) {
        [MyLogin openVC:0 vc:self];
    }else {
        [MyLogin openVC:1 vc:self];
    }
}

@end
