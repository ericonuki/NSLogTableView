//
//  ViewController.m
//  teste_nslog_tableview
//
//  Created by Eric Onuki on 30/03/15.
//  Copyright (c) 2015 BEPiD-PucPR. All rights reserved.
//

#import "ViewController.h"
#import "NSLogTableView.h"
#import "NSLogTableViewDatasource.h"

@interface ViewController ()<NSLogTableViewDatasource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLogTableView *nsltbv = [[NSLogTableView alloc] init];
    nsltbv.datasource = self;
    nsltbv.numeroDeLinhas = 4;
    [nsltbv print];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSArray *)dadosDaTabela {
    return @[
            @"linha1",
            @"linha2",
            @"3",
            @"quatro"
    ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
