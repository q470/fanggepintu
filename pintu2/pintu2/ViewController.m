//
//  ViewController.m
//  pintu2
//
//  Created by Administartor on 15-11-7.
//  Copyright (c) 2015年 Administartor. All rights reserved.
//

#import "ViewController.h"
#import "xuanguan.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"1  %f",_yi.center.x);
    NSLog(@"1  %f",_yi.center.y);
    
    NSLog(@"2 %f",_er.center.x);
    NSLog(@"2 %f",_er.center.y);
    
    NSLog(@"3 %f",_san.center.x);
    NSLog(@"3 %f",_san.center.y);
    
    NSLog(@"4 %f",_si.center.x);
    NSLog(@"4 %f",_si.center.y);
    
    NSLog(@"5 %f",_wu.center.x);
    NSLog(@"5 %f",_wu.center.y);
    
    NSLog(@"6 %f",_liu.center.x);
    NSLog(@"6 %f",_liu.center.y);
    
    NSLog(@"7 %f",_qi.center.x);
    NSLog(@"7 %f",_qi.center.y);
    
    NSLog(@"8 %f",_ba.center.x);
    NSLog(@"8 %f",_ba.center.y);
    
//    if (_yi.center.x == 55.500000) {
//        if (_yi.center.y == 131.500000) {
//            if (_er.center.x == 160.500000) {
//                if (_er.center.y == 131.500000) {
//                    if (_san.center.x == 265.500000) {
//                        if (_san.center.y == 131.500000) {
//                            if (_si.center.x == 55.500000) {
//                                if (_si.center.y == 236.500000) {
//                                    if (_wu.center.x == 160.500000) {
//                                        if (_wu.center.y == 236.500000) {
//                                            if (_liu.center.x == 265.500000) {
//                                                if (_liu.center.y == 236.500000) {
//                                                    if (_qi.center.x == 55.500000) {
//                                                        if (_qi.center.y == 341.500000) {
//                                                            if (_ba.center.x == 160.500000) {
//                                                                if (_ba.center.y == 341.500000) {
//                                                                    NSLog(@"对正成功");
//                                                                }
//                                                            }
//                                                        }
//                                                    }
//                                                }
//                                            }
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"完成" message:@"太棒了！" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
//    
//    [alert show];
    
//    CGPoint center1 = CGPointMake(55.500000, 131.500000);
//    CGPoint center2 = CGPointMake(160.500000, 131.500000);
//    CGPoint center3 = CGPointMake(265.500000, 131.500000);
//    CGPoint center4 = CGPointMake(55.500000, 236.500000);
//    CGPoint center5 = CGPointMake(160.500000, 236.500000);
//    CGPoint center6 = CGPointMake(265.500000, 236.500000);
//    CGPoint center7 = CGPointMake(55.500000, 341.500000);
//    CGPoint center8 = CGPointMake(160.500000, 341.500000);
//    CGPoint center9 = CGPointMake(265.500000, 341.500000);
//    
//    
//    NSLog(@"%d",arc4random_uniform(10));
//    
//    NSInteger sj = arc4random_uniform(10);
//    
//    NSLog(@"%d",sj);
//    
//    if (sj == 1) {
//        _yi.center = center2;
//        _er.center = center4;
//        _san.center = center7;
//        _si.center = center9;
//        _wu.center = center1;
//        _liu.center = center8;
//        _qi.center = center5;
//        _ba.center = center3;
//        _kong.center = center6;
//    }
    
    
    [_xiayiguan setHidden:YES];
    
    CGRect quanping = [UIScreen mainScreen].bounds;
    
    CGFloat quanpingx = quanping.size.height;
    CGFloat quanpingy = quanping.size.width;
    
    NSLog(@"全屏尺寸： %f %f",quanpingx,quanpingy);
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, quanpingy, quanpingx)];
    
    imageview.image = [UIImage imageNamed:@"beijing1.jpg"];
    
    [self.view insertSubview:imageview atIndex:0];
}

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    //    CGPoint point = _kong.center;
//    //
//    //    point.y += 50;
//    //
//    //    [_kong setCenter:point];
//    
//    //    CGPoint point1 = _liu.center;
//    //
//    //    CGPoint point2 = _kong.center;
//    //
//    //    CGPoint point3 = point1;
//    //
//    //    point1 = point2;
//    //    point2 = point3;
//    //
//    //    [_liu setCenter:point1];
//    //    [_kong setCenter:point2];
//    
//    
//    [UIView animateWithDuration:1 animations:^{
//        CGPoint point1 = _liu.center;
//        
//        CGPoint point2 = _kong.center;
//        
//        CGPoint point3 = point1;
//        
//        point1 = point2;
//        point2 = point3;
//        
//        [_liu setCenter:point1];
//        [_kong setCenter:point2];
//    }];
//}

//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (IBAction)yihao
{
    CGPoint point1 = _yi.center;
    CGPoint point2 = _er.center;
    CGPoint point4 = _si.center;
    CGPoint point5 = _wu.center;
    
    NSLog(@"x1 %f",point1.x);
    NSLog(@"y1 %f",point1.y);
    
    NSLog(@"x2 %f",point2.x);
    NSLog(@"y2 %f",point2.y);
    
    NSLog(@"x4 %f",point4.x);
    NSLog(@"y4 %f",point4.y);
    
    NSLog(@"x5 %f",point5.x);
    NSLog(@"y5 %f",point5.y);
    
    
    if (point2.x - point1.x <= 105) {
        if (point2.y - point1.y <= 181) {
            NSLog(@"交换成功");
            
            [UIView animateWithDuration:1 animations:^{
                CGPoint point1 = _yi.center;
                
                CGPoint point2 = _kong.center;
                
                CGPoint point3 = point1;
                
                point1 = point2;
                point2 = point3;
                
                [_yi setCenter:point1];
                [_kong setCenter:point2];
            }];
        }
    }
    
    if (_yi.center.x == 55.500000) {
        if (_yi.center.y == 131.500000) {
            if (_er.center.x == 160.500000) {
                if (_er.center.y == 131.500000) {
                    if (_san.center.x == 265.500000) {
                        if (_san.center.y == 131.500000) {
                            if (_si.center.x == 55.500000) {
                                if (_si.center.y == 236.500000) {
                                    if (_wu.center.x == 160.500000) {
                                        if (_wu.center.y == 236.500000) {
                                            if (_liu.center.x == 265.500000) {
                                                if (_liu.center.y == 236.500000) {
                                                    if (_qi.center.x == 55.500000) {
                                                        if (_qi.center.y == 341.500000) {
                                                            if (_ba.center.x == 160.500000) {
                                                                if (_ba.center.y == 341.500000) {
                                                                    NSLog(@"对正成功");
                                                                    
                                                                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"完成" message:@"太棒了！" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
                                                                    
                                                                    [alert show];
                                                                    
                                                                    [_xiayiguan setHidden:NO];
                                                                    
                                                                    [_kong setImage:[UIImage imageNamed:@"IMG_7209.JPG"] forState:UIControlStateNormal];
                                                                    
                                                                    _yi.userInteractionEnabled = NO;
                                                                    _er.userInteractionEnabled = NO;
                                                                    
                                                                    _san.userInteractionEnabled = NO;
                                                                    
                                                                    _si.userInteractionEnabled = NO;
                                                                    
                                                                    _wu.userInteractionEnabled = NO;
                                                                    
                                                                    _liu.userInteractionEnabled = NO;
                                                                    
                                                                    _qi.userInteractionEnabled = NO;
                                                                    _ba.userInteractionEnabled = NO;
                                                                    _kong.userInteractionEnabled = NO;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


- (IBAction)erhao
{
    [UIView animateWithDuration:1 animations:^{
        CGPoint point1 = _er.center;
        
        CGPoint point2 = _kong.center;
        
        CGPoint point3 = point1;
        
        point1 = point2;
        point2 = point3;
        
        [_er setCenter:point1];
        [_kong setCenter:point2];
    }];
    
    
    if (_yi.center.x == 55.500000) {
        if (_yi.center.y == 131.500000) {
            if (_er.center.x == 160.500000) {
                if (_er.center.y == 131.500000) {
                    if (_san.center.x == 265.500000) {
                        if (_san.center.y == 131.500000) {
                            if (_si.center.x == 55.500000) {
                                if (_si.center.y == 236.500000) {
                                    if (_wu.center.x == 160.500000) {
                                        if (_wu.center.y == 236.500000) {
                                            if (_liu.center.x == 265.500000) {
                                                if (_liu.center.y == 236.500000) {
                                                    if (_qi.center.x == 55.500000) {
                                                        if (_qi.center.y == 341.500000) {
                                                            if (_ba.center.x == 160.500000) {
                                                                if (_ba.center.y == 341.500000) {
                                                                    NSLog(@"对正成功");
                                                                    
                                                                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"完成" message:@"太棒了！" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
                                                                    
                                                                    [alert show];
                                                                    
                                                                    [_xiayiguan setHidden:NO];
                                                                    
                                                                    [_kong setImage:[UIImage imageNamed:@"IMG_7209.JPG"] forState:UIControlStateNormal];
                                                                    
                                                                    _yi.userInteractionEnabled = NO;
                                                                    _er.userInteractionEnabled = NO;
                                                                    
                                                                    _san.userInteractionEnabled = NO;
                                                                    
                                                                    _si.userInteractionEnabled = NO;
                                                                    
                                                                    _wu.userInteractionEnabled = NO;
                                                                    
                                                                    _liu.userInteractionEnabled = NO;
                                                                    
                                                                    _qi.userInteractionEnabled = NO;
                                                                    _ba.userInteractionEnabled = NO;
                                                                    _kong.userInteractionEnabled = NO;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}

- (IBAction)sanhao
{
    [UIView animateWithDuration:1 animations:^{
        CGPoint point1 = _san.center;
        
        CGPoint point2 = _kong.center;
        
        CGPoint point3 = point1;
        
        point1 = point2;
        point2 = point3;
        
        [_san setCenter:point1];
        [_kong setCenter:point2];
    }];
    
    
    if (_yi.center.x == 55.500000) {
        if (_yi.center.y == 131.500000) {
            if (_er.center.x == 160.500000) {
                if (_er.center.y == 131.500000) {
                    if (_san.center.x == 265.500000) {
                        if (_san.center.y == 131.500000) {
                            if (_si.center.x == 55.500000) {
                                if (_si.center.y == 236.500000) {
                                    if (_wu.center.x == 160.500000) {
                                        if (_wu.center.y == 236.500000) {
                                            if (_liu.center.x == 265.500000) {
                                                if (_liu.center.y == 236.500000) {
                                                    if (_qi.center.x == 55.500000) {
                                                        if (_qi.center.y == 341.500000) {
                                                            if (_ba.center.x == 160.500000) {
                                                                if (_ba.center.y == 341.500000) {
                                                                    NSLog(@"对正成功");
                                                                    
                                                                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"完成" message:@"太棒了！" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
                                                                    
                                                                    [alert show];
                                                                    
                                                                    [_xiayiguan setHidden:NO];
                                                                    
                                                                    [_kong setImage:[UIImage imageNamed:@"IMG_7209.JPG"] forState:UIControlStateNormal];
                                                                    
                                                                    _yi.userInteractionEnabled = NO;
                                                                    _er.userInteractionEnabled = NO;
                                                                    
                                                                    _san.userInteractionEnabled = NO;
                                                                    
                                                                    _si.userInteractionEnabled = NO;
                                                                    
                                                                    _wu.userInteractionEnabled = NO;
                                                                    
                                                                    _liu.userInteractionEnabled = NO;
                                                                    
                                                                    _qi.userInteractionEnabled = NO;
                                                                    _ba.userInteractionEnabled = NO;
                                                                    _kong.userInteractionEnabled = NO;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}

- (IBAction)sihao
{
    [UIView animateWithDuration:1 animations:^{
        CGPoint point1 = _si.center;
        
        CGPoint point2 = _kong.center;
        
        CGPoint point3 = point1;
        
        point1 = point2;
        point2 = point3;
        
        [_si setCenter:point1];
        [_kong setCenter:point2];
    }];
    
    
    if (_yi.center.x == 55.500000) {
        if (_yi.center.y == 131.500000) {
            if (_er.center.x == 160.500000) {
                if (_er.center.y == 131.500000) {
                    if (_san.center.x == 265.500000) {
                        if (_san.center.y == 131.500000) {
                            if (_si.center.x == 55.500000) {
                                if (_si.center.y == 236.500000) {
                                    if (_wu.center.x == 160.500000) {
                                        if (_wu.center.y == 236.500000) {
                                            if (_liu.center.x == 265.500000) {
                                                if (_liu.center.y == 236.500000) {
                                                    if (_qi.center.x == 55.500000) {
                                                        if (_qi.center.y == 341.500000) {
                                                            if (_ba.center.x == 160.500000) {
                                                                if (_ba.center.y == 341.500000) {
                                                                    NSLog(@"对正成功");
                                                                    
                                                                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"完成" message:@"太棒了！" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
                                                                    
                                                                    [alert show];
                                                                    
                                                                    [_xiayiguan setHidden:NO];
                                                                    
                                                                    [_kong setImage:[UIImage imageNamed:@"IMG_7209.JPG"] forState:UIControlStateNormal];
                                                                    
                                                                    _yi.userInteractionEnabled = NO;
                                                                    _er.userInteractionEnabled = NO;
                                                                    
                                                                    _san.userInteractionEnabled = NO;
                                                                    
                                                                    _si.userInteractionEnabled = NO;
                                                                    
                                                                    _wu.userInteractionEnabled = NO;
                                                                    
                                                                    _liu.userInteractionEnabled = NO;
                                                                    
                                                                    _qi.userInteractionEnabled = NO;
                                                                    _ba.userInteractionEnabled = NO;
                                                                    _kong.userInteractionEnabled = NO;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}

- (IBAction)wuhao
{
    [UIView animateWithDuration:1 animations:^{
        CGPoint point1 = _wu.center;
        
        CGPoint point2 = _kong.center;
        
        CGPoint point3 = point1;
        
        point1 = point2;
        point2 = point3;
        
        [_wu setCenter:point1];
        [_kong setCenter:point2];
    }];
    
    
    if (_yi.center.x == 55.500000) {
        if (_yi.center.y == 131.500000) {
            if (_er.center.x == 160.500000) {
                if (_er.center.y == 131.500000) {
                    if (_san.center.x == 265.500000) {
                        if (_san.center.y == 131.500000) {
                            if (_si.center.x == 55.500000) {
                                if (_si.center.y == 236.500000) {
                                    if (_wu.center.x == 160.500000) {
                                        if (_wu.center.y == 236.500000) {
                                            if (_liu.center.x == 265.500000) {
                                                if (_liu.center.y == 236.500000) {
                                                    if (_qi.center.x == 55.500000) {
                                                        if (_qi.center.y == 341.500000) {
                                                            if (_ba.center.x == 160.500000) {
                                                                if (_ba.center.y == 341.500000) {
                                                                    NSLog(@"对正成功");
                                                                    
                                                                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"完成" message:@"太棒了！" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
                                                                    
                                                                    [alert show];
                                                                    
                                                                    [_xiayiguan setHidden:NO];
                                                                    
                                                                    [_kong setImage:[UIImage imageNamed:@"IMG_7209.JPG"] forState:UIControlStateNormal];
                                                                    
                                                                    _yi.userInteractionEnabled = NO;
                                                                    _er.userInteractionEnabled = NO;
                                                                    
                                                                    _san.userInteractionEnabled = NO;
                                                                    
                                                                    _si.userInteractionEnabled = NO;
                                                                    
                                                                    _wu.userInteractionEnabled = NO;
                                                                    
                                                                    _liu.userInteractionEnabled = NO;
                                                                    
                                                                    _qi.userInteractionEnabled = NO;
                                                                    _ba.userInteractionEnabled = NO;
                                                                    _kong.userInteractionEnabled = NO;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}

- (IBAction)liuhao
{
    [UIView animateWithDuration:1 animations:^{
        CGPoint point1 = _liu.center;
        
        CGPoint point2 = _kong.center;
        
        CGPoint point3 = point1;
        
        point1 = point2;
        point2 = point3;
        
        [_liu setCenter:point1];
        [_kong setCenter:point2];
    }];
    
    
    if (_yi.center.x == 55.500000) {
        if (_yi.center.y == 131.500000) {
            if (_er.center.x == 160.500000) {
                if (_er.center.y == 131.500000) {
                    if (_san.center.x == 265.500000) {
                        if (_san.center.y == 131.500000) {
                            if (_si.center.x == 55.500000) {
                                if (_si.center.y == 236.500000) {
                                    if (_wu.center.x == 160.500000) {
                                        if (_wu.center.y == 236.500000) {
                                            if (_liu.center.x == 265.500000) {
                                                if (_liu.center.y == 236.500000) {
                                                    if (_qi.center.x == 55.500000) {
                                                        if (_qi.center.y == 341.500000) {
                                                            if (_ba.center.x == 160.500000) {
                                                                if (_ba.center.y == 341.500000) {
                                                                    NSLog(@"对正成功");
                                                                    
                                                                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"完成" message:@"太棒了！" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
                                                                    
                                                                    [alert show];
                                                                    
                                                                    [_xiayiguan setHidden:NO];
                                                                    
                                                                    [_kong setImage:[UIImage imageNamed:@"IMG_7209.JPG"] forState:UIControlStateNormal];
                                                                    
                                                                    _yi.userInteractionEnabled = NO;
                                                                    _er.userInteractionEnabled = NO;
                                                                    
                                                                    _san.userInteractionEnabled = NO;
                                                                    
                                                                    _si.userInteractionEnabled = NO;
                                                                    
                                                                    _wu.userInteractionEnabled = NO;
                                                                    
                                                                    _liu.userInteractionEnabled = NO;
                                                                    
                                                                    _qi.userInteractionEnabled = NO;
                                                                    _ba.userInteractionEnabled = NO;
                                                                    _kong.userInteractionEnabled = NO;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}


- (IBAction)qihao
{
    [UIView animateWithDuration:1 animations:^{
        CGPoint point1 = _qi.center;
        
        CGPoint point2 = _kong.center;
        
        CGPoint point3 = point1;
        
        point1 = point2;
        point2 = point3;
        
        [_qi setCenter:point1];
        [_kong setCenter:point2];
    }];
    
    
    if (_yi.center.x == 55.500000) {
        if (_yi.center.y == 131.500000) {
            if (_er.center.x == 160.500000) {
                if (_er.center.y == 131.500000) {
                    if (_san.center.x == 265.500000) {
                        if (_san.center.y == 131.500000) {
                            if (_si.center.x == 55.500000) {
                                if (_si.center.y == 236.500000) {
                                    if (_wu.center.x == 160.500000) {
                                        if (_wu.center.y == 236.500000) {
                                            if (_liu.center.x == 265.500000) {
                                                if (_liu.center.y == 236.500000) {
                                                    if (_qi.center.x == 55.500000) {
                                                        if (_qi.center.y == 341.500000) {
                                                            if (_ba.center.x == 160.500000) {
                                                                if (_ba.center.y == 341.500000) {
                                                                    NSLog(@"对正成功");
                                                                    
                                                                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"完成" message:@"太棒了！" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
                                                                    
                                                                    [alert show];
                                                                    
                                                                    [_xiayiguan setHidden:NO];
                                                                    
                                                                    [_kong setImage:[UIImage imageNamed:@"IMG_7209.JPG"] forState:UIControlStateNormal];
                                                                    
                                                                    _yi.userInteractionEnabled = NO;
                                                                    _er.userInteractionEnabled = NO;
                                                                    
                                                                    _san.userInteractionEnabled = NO;
                                                                    
                                                                    _si.userInteractionEnabled = NO;
                                                                    
                                                                    _wu.userInteractionEnabled = NO;
                                                                    
                                                                    _liu.userInteractionEnabled = NO;
                                                                    
                                                                    _qi.userInteractionEnabled = NO;
                                                                    _ba.userInteractionEnabled = NO;
                                                                    _kong.userInteractionEnabled = NO;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}

- (IBAction)bahao
{
    [UIView animateWithDuration:1 animations:^{
        CGPoint point1 = _ba.center;
        
        CGPoint point2 = _kong.center;
        
        CGPoint point3 = point1;
        
        point1 = point2;
        point2 = point3;
        
        [_ba setCenter:point1];
        [_kong setCenter:point2];
    }];
    
    
    if (_yi.center.x == 55.500000) {
        if (_yi.center.y == 131.500000) {
            if (_er.center.x == 160.500000) {
                if (_er.center.y == 131.500000) {
                    if (_san.center.x == 265.500000) {
                        if (_san.center.y == 131.500000) {
                            if (_si.center.x == 55.500000) {
                                if (_si.center.y == 236.500000) {
                                    if (_wu.center.x == 160.500000) {
                                        if (_wu.center.y == 236.500000) {
                                            if (_liu.center.x == 265.500000) {
                                                if (_liu.center.y == 236.500000) {
                                                    if (_qi.center.x == 55.500000) {
                                                        if (_qi.center.y == 341.500000) {
                                                            if (_ba.center.x == 160.500000) {
                                                                if (_ba.center.y == 341.500000) {
                                                                    NSLog(@"对正成功");
                                                                    
                                                                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"完成" message:@"太棒了！" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
                                                                    
                                                                    [alert show];
                                                                    
                                                                    [_xiayiguan setHidden:NO];
                                                                    
                                                                    [_kong setImage:[UIImage imageNamed:@"IMG_7209.JPG"] forState:UIControlStateNormal];
                                                                    
                                                                    _yi.userInteractionEnabled = NO;
                                                                    _er.userInteractionEnabled = NO;
                                                                    
                                                                    _san.userInteractionEnabled = NO;
                                                                    
                                                                    _si.userInteractionEnabled = NO;
                                                                    
                                                                    _wu.userInteractionEnabled = NO;
                                                                    
                                                                    _liu.userInteractionEnabled = NO;
                                                                    
                                                                    _qi.userInteractionEnabled = NO;
                                                                    _ba.userInteractionEnabled = NO;
                                                                    _kong.userInteractionEnabled = NO;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}

- (IBAction)zhujiemian {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)xiayiguan2
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    xuanguan *dakaianniu = [[xuanguan alloc] init];
    dakaianniu.dierguan.userInteractionEnabled = YES;
}
@end
