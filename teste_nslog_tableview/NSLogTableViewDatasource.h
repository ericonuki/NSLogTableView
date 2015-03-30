//
// Created by Eric Onuki on 30/03/15.
// Copyright (c) 2015 BEPiD-PucPR. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSLogTableView;

@protocol NSLogTableViewDatasource <NSObject>

- (NSString *)valorDoIndexPath:(NSIndexPath *)idx;
- (NSString *)valorDaSection:(int)section;
- (int)numeroDeLinhasDaTabela:(NSLogTableView *)tabela naSection:(int)section;
- (int)numeroDeSections:(NSLogTableView *)tabela;

@end