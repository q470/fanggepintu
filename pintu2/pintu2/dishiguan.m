//
//  dishiguan.m
//  pintu2
//
//  Created by Administartor on 15-11-23.
//  Copyright (c) 2015年 Administartor. All rights reserved.
//

//2015年11月23日晚工作提示：需要提取有用的东西，并在一个空白的类里面重写
//2015年11月24日晚工作提示：验证机制已经做好了，还没有测试
//2015年11月25日下午工作提示：正在想办法怎样让玩过的关卡才能点击

#import "dishiguan.h"
#import "xuanguan.h"

@interface dishiguan ()

@end

@implementation dishiguan

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置标题
    
    UILabel *biaoti = [[UILabel alloc] initWithFrame:CGRectMake(120, 26, 154, 49)];
    
    biaoti.text = @"第十关";
    biaoti.font = [UIFont fontWithName:@"Helvetica" size:20];
    biaoti.backgroundColor = [UIColor colorWithWhite:0 alpha:0];
    
    [self.view addSubview:biaoti];
    
    //产生8个不重复的随机数
    
    NSMutableArray *startArray=[[NSMutableArray alloc] initWithObjects:@0,@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13,@14,@15,@16,@17,@18,@19,@20,@21,@22,@23,@24,@25,@26,@27,@28,@29,@30,@31,@32,@33,@34,@35,nil];
    
    //随机数产生结果
    NSMutableArray *resultArray=[[NSMutableArray alloc] initWithCapacity:0];
    //随机数个数
    NSInteger m=36;
    for (int i=0; i<m; i++) {
        int t=arc4random()%startArray.count;
        resultArray[i]=startArray[t];
        startArray[t]=[startArray lastObject]; //为更好的乱序，故交换下位置
        [startArray removeLastObject];
    }
    
    //设置位置
    
    NSMutableArray *arrayM = [[NSMutableArray alloc] init];
    
    NSInteger h = 0;
    NSInteger l = 0;
    
    for (l = 0; l<6; l++) {
        for (h = 0; h<6; h++) {
            
            CGRect fangkuaiweizhi = CGRectMake(7+h*50, 85+l*50, 48, 48);
            [arrayM addObject:[NSValue valueWithCGRect:fangkuaiweizhi]];
            
        }
    }

    
    _arrayM2 = arrayM;
    
    //灰色方格
    
//    UIButton *grayButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    
//    grayButton.tag = 35;
//    
//    [grayButton setBackgroundColor:[UIColor grayColor]];
//    
//    [grayButton setFrame:CGRectMake(257, 333, 48, 48)];
//    
//    [self.view addSubview:grayButton];
    
    //设置方格
    
#pragma mark - 设置方格
    
    for (NSInteger i=0; i<36; i++) {
        
        if (i<35) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            
            NSString *tupian = [NSString stringWithFormat:@"tupian10_%.2i.png",i+1];
            
            [button setBackgroundImage:[UIImage imageNamed:tupian] forState:UIControlStateNormal];
            
//            NSString *zhuanhuanzi= [NSString stringWithFormat:@"%i",i];
//            
//            [button setTitle:zhuanhuanzi forState:UIControlStateNormal];
//            [button setBackgroundColor:[UIColor orangeColor]];
            
            NSString *str = [NSString stringWithFormat:@"%@",resultArray[i]];
            
            NSLog(@"%@",str);
            
            NSInteger zhuanhuan = [str intValue];
            
            NSLog(@"%ld",(long)zhuanhuan);
            
            CGRect rect = [arrayM[zhuanhuan] CGRectValue];
            
            [button setFrame:rect];
            
            button.tag = i;
            
            NSLog(@"tag %d",i);
            
            [button addTarget:self action:@selector(jiaohuanweizhi:) forControlEvents:UIControlEventTouchUpInside];
            
            [self.view addSubview:button];
        }else
        {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            
//            NSString *tupian = [NSString stringWithFormat:@"IMG_3433_%.2i.png",i+1];
            
            [button setBackgroundColor:[UIColor grayColor]];
            
            NSString *str = [NSString stringWithFormat:@"%@",resultArray[i]];
            
            NSLog(@"%@",str);
            
            NSInteger zhuanhuan = [str intValue];
            
            NSLog(@"%ld",(long)zhuanhuan);
            
            CGRect rect = [arrayM[zhuanhuan] CGRectValue];
            
            [button setFrame:rect];
            
            button.tag = i;
            
            NSLog(@"tag %d",i);
            
            [button addTarget:self action:@selector(jiaohuanweizhi:) forControlEvents:UIControlEventTouchUpInside];
            
            [self.view addSubview:button];
            
        }
    }
    
    
    
    
    //回到首页
    
    UIButton *huidaoshouye = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [huidaoshouye setFrame:CGRectMake(15, 404, 98, 48)];
    
    [huidaoshouye setBackgroundImage:[UIImage imageNamed:@"shouye.png"] forState:UIControlStateNormal];
    
    [huidaoshouye setTitle:@"返回首页面" forState:UIControlStateNormal];
    [huidaoshouye setFont:[UIFont systemFontOfSize:16]];
    [huidaoshouye setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [huidaoshouye addTarget:self action:@selector(huidaoshouye) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:huidaoshouye];
    
    
    //查看原图
    
    UIButton *chakanyuantu = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [chakanyuantu setFrame:CGRectMake(280, 420, 22, 22)];
    
    [chakanyuantu setBackgroundImage:[UIImage imageNamed:@"wenhao.png"] forState:UIControlStateNormal];
    
    [chakanyuantu addTarget:self action:@selector(chakanyuantu) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:chakanyuantu];
    
    //下一关
    
    UIButton *xiayiguan = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [xiayiguan setFrame:CGRectMake(254, 398, 60, 60)];
    
    [xiayiguan setBackgroundImage:[UIImage imageNamed:@"xiayiguan.png"] forState:UIControlStateNormal];
    
    [xiayiguan setTitle:@"通关啦！" forState:UIControlStateNormal];
    [xiayiguan setFont:[UIFont systemFontOfSize:15]];
    [xiayiguan setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [xiayiguan setHidden:YES];
    
    _xiayiguan = xiayiguan;
    
    [self.view addSubview:xiayiguan];
    
    //背景图片
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [imageview setImage:[UIImage imageNamed:@"beijing1.jpg"]];
    
    [self.view insertSubview:imageview atIndex:0];
}

- (void)xiayiguan
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - 交换位置

- (void)jiaohuanweizhi:(UIButton *)button
{
    
    
    [UIView animateWithDuration:1 animations:^{
        
        UIButton *grayButton = (UIButton *)[self.view viewWithTag:35];
        
        CGRect t;
        
        NSLog(@"tag %ld",(long)button.tag);
        
        t = button.frame;
        
        button.frame = grayButton.frame;
        
        grayButton.frame = t;
        
    } completion:^(BOOL finished) {
        UIButton *hedui;
        CGRect hedui2;
        UIAlertView *alert;
        
        NSInteger i,j;
        
        j = 0;
        for (i=0; i<35; i++) {
            hedui = (UIButton *)[self.view viewWithTag:i];
            hedui2 = [_arrayM2[i] CGRectValue];
            
            if (CGRectEqualToRect(hedui.frame, hedui2)) {
                
                j++;
                if (j==34) {
                    alert = [[UIAlertView alloc] initWithTitle:@"通关啦！" message:@"恭喜你，通关啦！" delegate:nil cancelButtonTitle:@"Yeah" otherButtonTitles:nil];
                    
                    [alert show];
                    
                    UIButton *grayButton = (UIButton *)[self.view viewWithTag:35];
                    [grayButton setBackgroundImage:[UIImage imageNamed:@"tupian10_36.png"] forState:UIControlStateNormal];
                    
                    _xiayiguan.hidden = NO;
                    
                    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 83, 310, 310)];
                    
                    view.alpha = 1;
                    
                    [self.view addSubview:view];
                    
                    break;
                }
            }
        }
    }];
    
}

- (void)huidaoshouye
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)chakanyuantu
{
    UIViewController *controller = [[UIViewController alloc] init];
    
    UIView *view = controller.view;
    
    [view setBackgroundColor:[UIColor whiteColor]];
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [imageview setImage:[UIImage imageNamed:@"beijing1.jpg"]];
    
    [view insertSubview:imageview atIndex:0];
    
    UIButton *fanhui = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [fanhui setFrame:CGRectMake(20, 327, 80, 48)];
    
    [fanhui setBackgroundImage:[UIImage imageNamed:@"shouye.png"] forState:UIControlStateNormal];
    
    fanhui.titleLabel.text = @"返回";
    fanhui.titleLabel.font = [UIFont systemFontOfSize:16];
    [fanhui setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [fanhui setTitle:@"返回" forState:UIControlStateNormal];
    
    [fanhui addTarget:self action:@selector(shangyiye) forControlEvents:UIControlEventTouchUpInside];
    
    [view addSubview:fanhui];
    
    [self presentViewController:controller animated:YES completion:nil];
    
    //标题
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(120, 70, 121, 41)];
    
    lable.text = @"查看原图";
    lable.font = [UIFont fontWithName:@"Helvetica" size:20];
    
    lable.backgroundColor = [UIColor colorWithWhite:0 alpha:0];
    
    [view addSubview:lable];
    
    UIImageView *yuantu = [[UIImageView alloc] initWithFrame:CGRectMake(90, 140, 150, 150)];
    
    [yuantu setImage:[UIImage imageNamed:@"tupianyuantu10.png"]];
    
    [view addSubview:yuantu];
}

- (void)shangyiye
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


@end
