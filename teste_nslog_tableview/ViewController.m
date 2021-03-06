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
#import "NSLogTableViewDelegate.h"

@interface ViewController ()<NSLogTableViewDatasource, NSLogTableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLogTableView *nsltbv = [[NSLogTableView alloc] init];
    nsltbv.datasource = self;
    nsltbv.delegate = self;
    [nsltbv print];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSString *)valorDoIndexPath:(NSIndexPath *)idx {
    NSArray *array = @[
            @"linha1",
            @"linha2",
            @"3",
            @"quatro"
    ];
    NSArray *array2 = @[
            @"a",
            @"b",
            @"c",
            @"d",
            @"e",
            @"f"
    ];
    if (idx.section == 0)
        return (NSString *)array[idx.row];
    if (idx.section == 1)
        return (NSString *)array2[idx.row];
    return @"";
}

- (NSString *)valorDaSection:(int)section {
    if (section == 0)
        return @"Linhas";
    if (section == 1)
        return @"abecedário";
    return @"SECTION NOT IMPLEMENTED";
}

- (int)numeroDeLinhasDaTabela:(NSLogTableView *)tabela naSection:(int)section {
    if(section == 0)
        return 4;
    if(section == 1)
        return 6;
    return 0;
}

- (int)numeroDeSections:(NSLogTableView *)tabela {
    return 2;
}

- (void)vaiApresentarTabela {
    printf("Vai Apresentar Tabela\n\n");
}

- (void)terminouDeApresentarTabela {
    printf("Terminou de Apresentar Tabela\n");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
