//
//  SortArray.h
//  ObjcSortArray
//
//  Created by Angelos Staboulis on 4/12/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SortArray : NSObject
- (NSMutableArray *) makeRandomNumbers;
- (NSSortDescriptor *) makeSortArray;
- (void) switchBlackMode:(BOOL) mode;
@end

NS_ASSUME_NONNULL_END
