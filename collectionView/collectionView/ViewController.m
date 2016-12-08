//
//  ViewController.m
//  collectionView
//
//  Created by mac on 16/12/7.
//  Copyright © 2016年 CYC. All rights reserved.
//

#import "ViewController.h"
#import "CCollectionShow.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(300, 300);
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    CCollectionShow *collection = [[CCollectionShow alloc] initWithFrame:CGRectMake(0, 200, 414, 414)
                                                    collectionViewLayout:flowLayout
                                                                    data:@[[UIColor orangeColor],
                                                                           [UIColor redColor],
                                                                           [UIColor yellowColor],
                                                                           [UIColor cyanColor],
                                                                           [UIColor blueColor],
                                                                           [UIColor purpleColor]]];
    collection.contentOffset = CGPointMake(333, 0);
    [self.view addSubview:collection];
    
    UIView *viewss = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2.0, 0, 2, 100)];
    viewss.backgroundColor = [UIColor blackColor];
    [self.view addSubview:viewss];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
