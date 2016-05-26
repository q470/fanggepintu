//
//  zhujiemian.m
//  pintu2
//
//  Created by Administartor on 15-11-12.
//  Copyright (c) 2015年 Administartor. All rights reserved.
//

#import "zhujiemian.h"

@interface zhujiemian ()

@end

@implementation zhujiemian

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
    
    UIImage *image = [UIImage imageNamed:@"fengmian.png"];
    
    UIImageView *imageview = [[UIImageView alloc] init];
    
    CGRect pinmudaxiao = [UIScreen mainScreen].bounds;
    
    [imageview setFrame:CGRectMake(0, 0, pinmudaxiao.size.width, pinmudaxiao.size.height)];
    
    [imageview setImage:image];
    
    [self.view insertSubview:imageview atIndex:0];
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

- (IBAction)anniuguanbi {
    
//    xuanguan *guanbianniu = [[xuanguan alloc] init];
//    
//    guanbianniu.dierguan.userInteractionEnabled = NO;
}
@end
