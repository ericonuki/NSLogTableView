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
    for(NSString* str in _rows) {
        printf("%s\n", str.UTF8String);
    }
}

@end
