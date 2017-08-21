//
//  ViewController.m
//  GeneralNavigation
//
//  Created by letv on 2017/8/21.
//  Copyright © 2017年 gaopan. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    nameLabel=[[UILabel alloc]init];
    nameLabel.text=@"this is root ViewController";
    nameLabel.backgroundColor=[UIColor purpleColor];
    nameLabel.frame=CGRectMake(self.view.bounds.size.width/2-100, self.view.bounds.size.height/2, 200, 50);
    [self.view addSubview:nameLabel];

    UIBarButtonItem* rightButton=[[UIBarButtonItem alloc]initWithTitle:@"next page" style:UIBarButtonItemStylePlain target:self action:@selector(goNextPage)];
    self.navigationItem.rightBarButtonItem=rightButton;
    self.title=@"ViewController";//
}

-(void)goNextPage{
    ViewController1* vc1=[[ViewController1 alloc]init];
    [self.navigationController pushViewController:vc1 animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
