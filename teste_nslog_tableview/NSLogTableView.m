//
//  NSLogTableView.m
//  teste_nslog_tableview
//
//  Created by Eric Onuki on 30/03/15.
//  Copyright (c) 2015 BEPiD-PucPR. All rights reserved.
//

#import "NSLogTableView.h"

@implementation NSLogTableView

- (void)print {
    NSArray *dados = [_datasource dadosDaTabela];
    for(int i = 0; i<_numeroDeLinhas; ++i) {
        NSString *str = (NSString *)dados[i];
        printf("%s\n", str.UTF8String);
    }
}

@end
