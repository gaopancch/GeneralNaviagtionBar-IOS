//
//  ViewController1.m
//  GeneralNavigation
//
//  Created by letv on 2017/8/21.
//  Copyright © 2017年 gaopan. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"ViewController1";

    nameLabel=[[UILabel alloc]init];
    nameLabel.text=@"this is ViewController1";
    nameLabel.backgroundColor=[UIColor orangeColor];
    nameLabel.frame=CGRectMake(self.view.bounds.size.width/2-100, self.view.bounds.size.height/2, 200, 50);
    nameLabel.tag=1011;
    [self.view addSubview:nameLabel];

    UIBarButtonItem* rightButton=[[UIBarButtonItem alloc]initWithTitle:@"next page o" style:UIBarButtonItemStyleDone target:self action:@selector(goNextPage)];
    self.navigationItem.rightBarButtonItem=rightButton;
}

//最上层的view首先截获到touchbegan事件。
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController popViewControllerAnimated:YES];
}


-(void)goNextPage{
    ViewController2* vc2=[[ViewController2 alloc]init];
    [self.navigationController pushViewController:vc2 animated:YES];
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
