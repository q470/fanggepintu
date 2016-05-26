//
//  disiguan.m
//  pintu2
//
//  Created by Administartor on 15-11-22.
//  Copyright (c) 2015年 Administartor. All rights reserved.
//

#import "disiguan.h"
#import "xuanguan.h"

@interface disiguan ()

@end

@implementation disiguan

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置标题
    
    UILabel *biaoti = [[UILabel alloc] initWithFrame:CGRectMake(120, 26, 154, 49)];
    
    biaoti.text = @"第四关";
    biaoti.font = [UIFont fontWithName:@"Helvetica" size:20];
    biaoti.backgroundColor = [UIColor colorWithWhite:0 alpha:0];
    
    [self.view addSubview:biaoti];
    
    //产生8个不重复的随机数
    
    //随机数从这里边产生
    NSMutableArray *startArray=[[NSMutableArray alloc] initWithObjects:@0,@1,@2,@3,@4,@5,@6,@7,nil];
    //随机数产生结果
    NSMutableArray *resultArray=[[NSMutableArray alloc] initWithCapacity:0];
    //随机数个数
    NSInteger m=8;
    for (int i=0; i<m; i++) {
        int t=arc4random()%startArray.count;
        resultArray[i]=startArray[t];
        startArray[t]=[startArray lastObject]; //为更好的乱序，故交换下位置
        [startArray removeLastObject];
    }
    
    //    //设置方格
    //
    //    for (NSInteger i=0; i<=8; i++) {
    //
    //        NSInteger x = 7 + 105 * (i % 3);
    //        NSInteger y = 83;
    //
    //        if (i>2 && i<=5) {
    //            y = 188;
    //        }else if (i > 5)
    //        {
    //            y = 293;
    //        }
    //
    //        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //
    //        NSString *tupian = [NSString stringWithFormat:@"IMG_720%i.JPG",i+1];
    //
    //        if (i == 8) {
    //            [button setBackgroundColor:[UIColor grayColor]];
    //        }else
    //        {
    //            [button setBackgroundImage:[UIImage imageNamed:tupian] forState:UIControlStateNormal];
    //
    //        }
    //
    //        CGRect fangkuaiweizhi = CGRectMake(x, y, 97, 97);
    //
    //        [button setFrame:fangkuaiweizhi];
    //
    //        [self.view addSubview:button];
    //    }
    
    //设置位置
    
    NSMutableArray *arrayM = [[NSMutableArray alloc] init];
    
    for (NSInteger i=0; i<8; i++) {
        
        NSInteger x = 7 + 105 * (i % 3);
        NSInteger y = 83;
        
        if (i>2 && i<=5) {
            y = 188;
        }else if (i > 5)
        {
            y = 293;
        }
        
        //        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //
        //        NSString *tupian = [NSString stringWithFormat:@"IMG_720%i.JPG",i+1];
        //
        //        [button setBackgroundImage:[UIImage imageNamed:tupian] forState:UIControlStateNormal];
        
        CGRect fangkuaiweizhi = CGRectMake(x, y, 97, 97);
        
        [arrayM addObject:[NSValue valueWithCGRect:fangkuaiweizhi]];
        
        //        NSString *str = [NSString stringWithFormat:@"%@",resultArray[i]];
        //
        //        NSLog(@"%@",str);
        //
        //        NSInteger zhuanhuan = [str intValue];
        //
        //        NSLog(@"%ld",(long)zhuanhuan);
        //
        //        CGRect rect = [arrayM[i] CGRectValue];
        //
        //        [button setFrame:rect];
        //
        //        [self.view addSubview:button];
    }
    
    _arrayM2 = arrayM;
    
    //灰色方格
    
    UIButton *grayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    grayButton.tag = 9;
    
    [grayButton setBackgroundColor:[UIColor grayColor]];
    
    [grayButton setFrame:CGRectMake(217, 293, 97, 97)];
    
    [self.view addSubview:grayButton];
    
    //设置方格
    
#pragma mark - 设置方格
    
    for (NSInteger i=0; i<8; i++) {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        
        NSString *tupian = [NSString stringWithFormat:@"tupian4_%.2i.png",i+1];
        
        [button setBackgroundImage:[UIImage imageNamed:tupian] forState:UIControlStateNormal];
        
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
    
    [xiayiguan setTitle:@"下一关" forState:UIControlStateNormal];
    [xiayiguan setFont:[UIFont systemFontOfSize:15]];
    [xiayiguan setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [xiayiguan addTarget:self action:@selector(xiayiguan) forControlEvents:UIControlEventTouchUpInside];
    
    [xiayiguan setHidden:YES];
    
    _xiayiguan = xiayiguan;
    
    [self.view addSubview:xiayiguan];
    
    //背景图片
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [imageview setImage:[UIImage imageNamed:@"chengsebeijing.jpg"]];
    
    [self.view insertSubview:imageview atIndex:0];
}

- (void)xiayiguan
{
    [self dismissViewControllerAnimated:YES completion:^{
        xuanguan *dakaianniu = [[xuanguan alloc] init];
        dakaianniu.diwuguan.userInteractionEnabled = YES;
    }];
}

#pragma mark - 交换位置

- (void)jiaohuanweizhi:(UIButton *)button
{
    
    
    [UIView animateWithDuration:1 animations:^{
        
        UIButton *grayButton = (UIButton *)[self.view viewWithTag:9];
        
        CGRect t;
        
        NSLog(@"tag %ld",(long)button.tag);
        
        t = button.frame;
        
        button.frame = grayButton.frame;
        
        grayButton.frame = t;
        
    } completion:^(BOOL finished) {
        UIButton *hedui;
        CGRect hedui2;
        UIAlertView *alert;
        
        NSInteger i,j,k;
        
        j = 0;
        for (i=0; i<8; i++) {
            hedui = (UIButton *)[self.view viewWithTag:i];
            hedui2 = [_arrayM2[i] CGRectValue];
            
            if (CGRectEqualToRect(hedui.frame, hedui2)) {
                
                j++;
                if (j==7) {
                    alert = [[UIAlertView alloc] initWithTitle:@"拼接成功" message:@"你赢啦" delegate:nil cancelButtonTitle:@"Yeah" otherButtonTitles:nil];
                    
                    [alert show];
                    
                    UIButton *grayButton = (UIButton *)[self.view viewWithTag:9];
                    [grayButton setBackgroundImage:[UIImage imageNamed:@"tupian4_09.png"] forState:UIControlStateNormal];
                    
                    _xiayiguan.hidden = NO;
                    
                    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 83, 310, 310)];
                    
                    view.alpha = 1;
                    
                    [self.view addSubview:view];
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
    
    [imageview setImage:[UIImage imageNamed:@"chengsebeijing.jpg"]];
    
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
    
    [yuantu setImage:[UIImage imageNamed:@"yuantu4.jpg"]];
    
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
