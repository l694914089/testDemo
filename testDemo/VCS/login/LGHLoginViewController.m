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
    [self.view sd_addSubviews:@[userNameField]];
    
    userNameField.backgroundColor = [UIColor redColor];
    userNameField.sd_layout
    .leftSpaceToView(self.view, 20)
    .rightSpaceToView(self.view, 20)
    .topSpaceToView(self.view, 20);
    
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
