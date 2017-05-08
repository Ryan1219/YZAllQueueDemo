//
//  ViewController.m
//  YZAllQueueDemo
//
//  Created by zhangliangwang on 17/5/8.
//  Copyright © 2017年 zhangliangwang. All rights reserved.
//

#import "ViewController.h"

#include<iostream>
#include<algorithm>

const int N = 3;
int arr[N] = {1,2,3};

@interface ViewController ()


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // OC里调用C++的代码
    AllQueue();
}


//MARK:- 全排列的STL实现
void AllQueue() {
    
    do {
        for (int i = 0; i < N; i++) {
            printf("%d",arr[i]);
            if ((i+1) % N == 0) {
                putchar('\n');
            }
        }
    } while (std::next_permutation(arr,arr+N));
    
}
    

@end






















































