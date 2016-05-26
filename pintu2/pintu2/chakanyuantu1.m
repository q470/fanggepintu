//
//  chakanyuantu1.m
//  pintu2
//
//  Created by Administartor on 15-11-14.
//  Copyright (c) 2015年 Administartor. All rights reserved.
//

#import "chakanyuantu1.h"

@interface chakanyuantu1 ()

@end

@implementation chakanyuantu1

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
    
    CGRect quanping = [UIScreen mainScreen].bounds;
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:quanping];
    
    imageview.image = [UIImage imageNamed:@"beijing1.jpg"];
    
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

- (IBAction)fanhui {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
