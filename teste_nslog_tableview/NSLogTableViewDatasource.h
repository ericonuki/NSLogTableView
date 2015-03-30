//
// Created by Eric Onuki on 30/03/15.
// Copyright (c) 2015 BEPiD-PucPR. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSLogTableView;

@protocol NSLogTableViewDatasource <NSObject>

- (NSString *)valorDaLinha:(int)linha;
- (NSString *)valorDaSection:(int)section;
- (int)numeroDeLinhasDaTabela:(NSLogTableView *)tabela;
- (int)numeroDeSections:(NSLogTableView *)tabela;

@end