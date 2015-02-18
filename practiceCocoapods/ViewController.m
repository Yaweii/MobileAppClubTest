//
//  ViewController.m
//  practiceCocoapods
//
//  Created by ZhangYawei on 2/10/15.
//  Copyright (c) 2015 001. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // AFNetworking test
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://date.jsontest.com/"
     //Comment ftw. gg.
      parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *dic=responseObject;
        for (NSString *s in [dic allKeys]){
            NSLog(@"key:%@| value: %@", s,[dic objectForKey:s]);
        }
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
