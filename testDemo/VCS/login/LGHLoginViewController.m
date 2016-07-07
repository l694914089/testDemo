//
//  LGHLoginViewController.m
//  testDemo
//
//  Created by mac_leo on 16/7/4.
//  Copyright © 2016年 三秒. All rights reserved.
//
//                            _ooOoo_
//                           o8888888o
//                           88" . "88
//                           (| -_- |)
//                            O\ = /O
//                        ____/`---'\____
//                      .   ' \\| |// `.
//                       / \\||| : |||// \
//                     / _||||| -:- |||||- \
//                       | | \\\ - /// | |
//                     | \_| ''\---/'' | |
//                      \ .-\__ `-` ___/-. /
//                   ___`. .' /--.--\ `. . __
//                ."" '< `.___\_<|>_/___.' >'"".
//               | | : `- \`.;`\ _ /`;.`/ - ` : | |
//                 \ \ `-. \_ __\ /__ _/ .-` / /
//         ======`-.____`-.___\_____/___.-`____.-'======
//                            `=---='
//
//         .............................................
//                  佛祖镇楼                  BUG辟易

#import "LGHLoginViewController.h"

@interface LGHLoginViewController (){
    LGHBaseTextField * _userNameField;
    LGHBaseTextField * _passWordField;
    UIButton * _loginBtn;
}

@end

@implementation LGHLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupLoginView];
    // Do any additional setup after loading the view.
}

-(void)setupLoginView{
    LGHBaseTextField * userNameField = [LGHBaseTextField new];
    _userNameField = userNameField;
    
    LGHBaseTextField * passWordField = [LGHBaseTextField new];
    _passWordField = passWordField;
    
    UIButton * loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginBtn = loginBtn;
    [loginBtn setTitle:@"登 录" forState:UIControlStateNormal];
    
    [self.view sd_addSubviews:@[userNameField,passWordField,_loginBtn]];
    
    //布局
    userNameField.sd_layout
    .heightIs(25)
    .leftSpaceToView(self.view, 20)
    .rightSpaceToView(self.view, 20)
    .topSpaceToView(self.view, 20);
    
    passWordField.sd_layout
    .heightRatioToView(_userNameField,1)
    .leftEqualToView(_userNameField)
    .rightEqualToView(_userNameField)
    .topSpaceToView(_userNameField,20);
    
    loginBtn.sd_layout
    .heightIs(30)
    .rightSpaceToView(self.view,50)
    .leftSpaceToView(self.view,50)
    .topSpaceToView(passWordField,20);
    
    
    userNameField.sd_cornerRadius = @(3.0);
    passWordField.sd_cornerRadius = @(3.0);
    loginBtn.sd_cornerRadius = @(3.0);
    
    userNameField.backgroundColor = [UIColor whiteColor];
    passWordField.backgroundColor = [UIColor whiteColor];
    loginBtn.backgroundColor = COLOR(243, 197, 53, 1);
    
    [loginBtn addTarget:self action:@selector(loginBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
}
-(IBAction)loginBtnClicked:(UIButton *)sender{
    DLog(@"登录按钮点击");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
