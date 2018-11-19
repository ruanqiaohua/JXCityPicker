//
//  JXViewController.m
//  JXCityPicker
//
//  Created by ruanqiaohua@hotmail.com on 11/14/2018.
//  Copyright (c) 2018 ruanqiaohua@hotmail.com. All rights reserved.
//

#import "JXViewController.h"
#import "AreaPickerViewController.h"

@interface JXViewController ()

@end

@implementation JXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    AreaPickerViewController *areaPicker = [AreaPickerViewController showAreaPicker:13 city:0 area:0];
    [areaPicker sureButtonPressedCallBack:^(AreaPickerViewController *areaPicker, AreaPickerModel *model) {
        NSString *message = [NSString stringWithFormat:@"%@ %@ %@",model.province,model.city,model.area];
        NSLog(@"%@",message);
        [areaPicker dismiss];
    }];
}

@end
