//
//  youxijieshao.m
//  pintu2
//
//  Created by Administartor on 15-11-27.
//  Copyright (c) 2015年 Administartor. All rights reserved.
//

#import "youxijieshao.h"

@interface youxijieshao ()

@end

@implementation youxijieshao

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *image = [UIImage imageNamed:@"youxishuoming.png"];
    
    UIImageView *imageview = [[UIImageView alloc] init];
    
    CGRect pinmukuandu = [UIScreen mainScreen].bounds;
    
    [imageview setFrame:CGRectMake(0, 0, pinmukuandu.size.width, pinmukuandu.size.height)];
    
    [imageview setImage:image];
    
    [self.view insertSubview:imageview atIndex:0];
    
    UIButton *fanhui = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [fanhui setFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 60, 50, 50)];
    
    [fanhui setTitle:@"返回" forState:UIControlStateNormal];
    
    [fanhui setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [fanhui setFont:[UIFont systemFontOfSize:18]];
    
    [fanhui addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:fanhui];
}

- (void)fanhui
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
