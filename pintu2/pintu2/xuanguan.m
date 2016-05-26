//
//  xuanguan.m
//  pintu2
//
//  Created by Administartor on 15-11-23.
//  Copyright (c) 2015年 Administartor. All rights reserved.
//

#import "xuanguan.h"

@interface xuanguan ()

@end

@implementation xuanguan

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
    
    UIImage *image = [UIImage imageNamed:@"xuanguantupian.png"];
    
    UIImageView *imageview = [[UIImageView alloc] initWithImage:image];
    
    CGRect rect = [UIScreen mainScreen].bounds;
    
    [imageview setFrame:rect];
    
    [self.view insertSubview:imageview atIndex:0];
    
    UIButton *huidaozhuyemian = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [huidaozhuyemian setFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 80, 80, 80)];
    
    [huidaozhuyemian addTarget:self action:@selector(huidaozhuyemian) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:huidaozhuyemian];
}

- (void)huidaozhuyemian
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

- (IBAction)dierguan2 {
}
@end
