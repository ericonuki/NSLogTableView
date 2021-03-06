//
//  NSLogTableView.h
//  teste_nslog_tableview
//
//  Created by Eric Onuki on 30/03/15.
//  Copyright (c) 2015 BEPiD-PucPR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSLogTableViewDatasource.h"
#import "NSLogTableViewDelegate.h"

@interface NSLogTableView : NSObject

@property id<NSLogTableViewDatasource> datasource;
@property id<NSLogTableViewDelegate> delegate;

- (void)print;

@end
