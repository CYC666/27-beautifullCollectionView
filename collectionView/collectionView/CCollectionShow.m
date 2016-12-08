//
//  CCollectionShow.m
//  collectionView
//
//  Created by mac on 16/12/7.
//  Copyright © 2016年 CYC. All rights reserved.
//

#import "CCollectionShow.h"

@interface CCollectionShow () <UICollectionViewDelegate, UICollectionViewDataSource> {

    NSArray *_dataArray;
    NSInteger _currentPage;

}

@end

@implementation CCollectionShow



- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout data:(NSArray *)array{
    
    
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self != nil) {
        _dataArray = array;
        
        self.delegate = self;
        self.dataSource = self;
        self.backgroundColor = [UIColor whiteColor];
        self.decelerationRate = UIScrollViewDecelerationRateFast;
        [self registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"asdasdasd"];
    }
    return self;

}

#pragma mark - 代理方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return _dataArray.count;

}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"asdasdasd"
                                                                           forIndexPath:indexPath];
    cell.backgroundColor = _dataArray[indexPath.item];
    return cell;

}



@end
