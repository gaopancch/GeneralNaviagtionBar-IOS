//
//  ViewController2.m
//  GeneralNavigation
//
//  Created by letv on 2017/8/21.
//  Copyright © 2017年 gaopan. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.title=@"ViewController2";
    nameLabel=[[UILabel alloc]init];
    nameLabel.text=@"this is ViewController2";
    nameLabel.backgroundColor=[UIColor redColor];
    nameLabel.frame=CGRectMake(self.view.bounds.size.width/2-100, self.view.bounds.size.height/2, 200, 50);
    [self.view addSubview:nameLabel];
    UIBarButtonItem* rightButton=[[UIBarButtonItem alloc]initWithTitle:@"next page oo" style:UIBarButtonItemStyleDone target:self action:@selector(goNextPage)];
    self.navigationItem.rightBarButtonItem=rightButton;
}

-(void)goNextPage{
    ViewController3* vc3=[[ViewController3 alloc]init];
    [self.navigationController pushViewController:vc3 animated:YES];
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
