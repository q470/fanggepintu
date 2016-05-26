//
//  ViewController.h
//  pintu2
//
//  Created by Administartor on 15-11-7.
//  Copyright (c) 2015年 Administartor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *yi;
@property (weak, nonatomic) IBOutlet UIButton *er;
@property (weak, nonatomic) IBOutlet UIButton *san;
@property (weak, nonatomic) IBOutlet UIButton *si;
@property (weak, nonatomic) IBOutlet UIButton *wu;
@property (weak, nonatomic) IBOutlet UIButton *liu;
@property (weak, nonatomic) IBOutlet UIButton *qi;
@property (weak, nonatomic) IBOutlet UIButton *ba;
@property (weak, nonatomic) IBOutlet UIButton *kong;

- (IBAction)yihao;
- (IBAction)erhao;
- (IBAction)sanhao;
- (IBAction)sihao;
- (IBAction)wuhao;
- (IBAction)liuhao;
- (IBAction)qihao;
- (IBAction)bahao;

@property (weak, nonatomic) IBOutlet UIButton *xiayiguan;

//@property (weak, nonatomic) IBOutlet UIImageView *beijing1;
- (IBAction)zhujiemian;
- (IBAction)xiayiguan2;
@end
