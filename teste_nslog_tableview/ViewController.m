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
    [nsltbv print];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSString *)valorDaLinha:(int)linha {
    NSArray *array = @[
            @"linha1",
            @"linha2",
            @"3",
            @"quatro"
    ];
    return (NSString *)array[linha];
}

- (NSString *)valorDaSection:(int)section {
    return @"SECTION NOT IMPLEMENTED";
}

- (int)numeroDeLinhasDaTabela:(NSLogTableView *)tabela {
    return 4;
}

- (int)numeroDeSections:(NSLogTableView *)tabela {
    return 2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
