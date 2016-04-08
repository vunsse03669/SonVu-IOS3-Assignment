//
//  ViewController.m
//  Bai2
//
//  Created by Mr.Vu on 4/8/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
{
    return 12;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    UICollectionViewCell *cell;

    if(indexPath.row % 4 == 0){
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
    }
    else if(indexPath.row % 4 == 1){
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell2" forIndexPath:indexPath];
    }
    else if(indexPath.row % 4 == 2){
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell3" forIndexPath:indexPath];
    }
    else if(indexPath.row % 4 == 3){
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell4" forIndexPath:indexPath];
    }
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout*)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
   
    CGSize size;
    if(indexPath.row % 4 == 0){
        size = CGSizeMake(400, 50);
    }
    else if(indexPath.row % 4 == 1){
        size = CGSizeMake(400, 50);
    }
    else if(indexPath.row % 4 == 2){
        size = CGSizeMake(400, 50);
    }
    else if(indexPath.row % 4 == 3){
        size = CGSizeMake(400, 50);
    }
    return size;

}

@end
