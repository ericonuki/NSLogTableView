//
//  NSLogTableView.m
//  teste_nslog_tableview
//
//  Created by Eric Onuki on 30/03/15.
//  Copyright (c) 2015 BEPiD-PucPR. All rights reserved.
//

#import "NSLogTableView.h"

@implementation NSLogTableView {
    int _numeroDeLinhas;
    int _numeroDeSections;
}

- (void)print {
    _numeroDeLinhas = [_datasource numeroDeLinhasDaTabela:self];
    _numeroDeSections = [_datasource numeroDeSections:self];
    for(int i = 0; i < _numeroDeLinhas; ++i) {
        NSString *str = [_datasource valorDaLinha:i];
        printf("%s\n", str.UTF8String);
    }
}

@end
