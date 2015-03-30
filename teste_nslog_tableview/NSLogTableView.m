//
//  NSLogTableView.m
//  teste_nslog_tableview
//
//  Created by Eric Onuki on 30/03/15.
//  Copyright (c) 2015 BEPiD-PucPR. All rights reserved.
//

#import "NSLogTableView.h"
@import UIKit;

@implementation NSLogTableView {
    int _numeroDeLinhas;
    int _numeroDeSections;
}

- (void)print {
    _numeroDeLinhas = [_datasource numeroDeLinhasDaTabela:self];
    _numeroDeSections = [_datasource numeroDeSections:self];
    for(int i = 0; i < _numeroDeSections; ++i) {
        NSString *sectionName = [_datasource valorDaSection:i];
        printf("-----Section: %s-----\n", sectionName.UTF8String);
        for(int j = 0; j<_numeroDeLinhas; ++j) {
            NSIndexPath *idx = [NSIndexPath indexPathForRow:j inSection:i];
            NSString *str = [_datasource valorDoIndexPath:idx];
            printf("%s\n", str.UTF8String);
        }
        printf("\n");
    }
}

@end
