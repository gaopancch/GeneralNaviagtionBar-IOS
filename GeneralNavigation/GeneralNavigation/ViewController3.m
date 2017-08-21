//
//  ViewController3.m
//  GeneralNavigation
//
//  Created by letv on 2017/8/21.
//  Copyright © 2017年 gaopan. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"ViewController3";
    nameLabel=[[UILabel alloc]init];
    nameLabel.text=@"this is ViewController3";
    nameLabel.backgroundColor=[UIColor blueColor];
    nameLabel.frame=CGRectMake(self.view.bounds.size.width/2-100, self.view.bounds.size.height/2, 200, 50);
    [self.view addSubview:nameLabel];
    UIBarButtonItem* leftButton=[[UIBarButtonItem alloc]initWithTitle:@"toRoot" style:UIBarButtonItemStyleDone target:self action:@selector(goToRootViewController)];
    self.navigationItem.leftBarButtonItem=leftButton;

}

-(void)goToRootViewController{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
