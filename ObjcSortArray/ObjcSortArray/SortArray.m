//
//  SortArray.m
//  ObjcSortArray
//
//  Created by Angelos Staboulis on 4/12/21.
//

#import "SortArray.h"
#import "SceneDelegate.h"
@interface SortArray()
@property NSMutableArray<id>* array;
@end
@implementation SortArray
- (instancetype)init{
    self = [super init];
    if(self){
        _array = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSMutableArray *) makeRandomNumbers{
    [_array removeAllObjects];
    for(int item=0;item<10;item++){
        [_array addObject:[NSString stringWithFormat:@"%d",arc4random_uniform(1000)]];
    }
    return _array;
}
-  (NSSortDescriptor *) makeSortArray{
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"intValue" ascending:TRUE];
    return descriptor;
}
- (void)switchBlackMode:(BOOL)mode{
    if(mode == FALSE){
        UIApplication *app = [UIApplication sharedApplication];
        SceneDelegate *scene = (SceneDelegate *) [[[[app connectedScenes] allObjects] firstObject] delegate];
        [scene.window setOverrideUserInterfaceStyle:UIUserInterfaceStyleDark];
    }
    else{
        UIApplication *app = [UIApplication sharedApplication];
        SceneDelegate *scene = (SceneDelegate *) [[[[app connectedScenes] allObjects] firstObject] delegate];
        [scene.window setOverrideUserInterfaceStyle:UIUserInterfaceStyleLight];
    }
}
@end
