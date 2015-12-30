//
//  ViewController.m
//  Glock-master
//
//  Created by 刘家男 on 15/12/30.
//  Copyright © 2015年 刘家男. All rights reserved.
//

#import "ViewController.h"
#import "lockViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)setPassword:(id)sender {
    NSString * passwordGlock =[[NSUserDefaults standardUserDefaults]objectForKey:@"passwordGlock"];
    if (passwordGlock) {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"提示" message:@"您已经设置手势密码！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }else{
        
        lockViewController * lock =[lockViewController new];
        [self presentViewController:lock animated:YES completion:nil];
    }
    
}
- (IBAction)resetPassword:(id)sender {
    NSString * passwordGlock =[[NSUserDefaults standardUserDefaults]objectForKey:@"passwordGlock"];
    if (passwordGlock) {
        
        lockViewController * lock =[lockViewController new];
        [self presentViewController:lock animated:YES completion:nil];
        lock.reset=@"请输入原密码";
        lock.resetIs=@"resetIs";
        
    }else{
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"提示" message:@"您尚未设置手势密码！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
