//
//  ViewController.m
//  ObjcSortArray
//
//  Created by Angelos Staboulis on 28/11/21.
//

#import "ViewController.h"
#import "SceneDelegate.h"
@interface ViewController ()

@end

@implementation ViewController
- (void) initialValues{
    _dark = FALSE;
    _sortArray = [[SortArray alloc] init];
    _array = [[NSMutableArray alloc] init];
    for(int item=0;item<10;item++){
        [_array addObject:[NSString stringWithFormat:@"%d",arc4random_uniform(1000)]];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialValues];
    [_mainTableView setDelegate:self];
    [_mainTableView setDataSource:self];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_array count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [cell.textLabel setText:[NSString stringWithFormat:@"%@",[_array objectAtIndex:indexPath.row]]];
    return cell;
}
- (IBAction)btnSort:(id)sender {
    NSSortDescriptor *sort = [_sortArray makeSortArray];
    [_array sortUsingDescriptors:@[sort]];
    [_mainTableView reloadData];
}

- (IBAction)btnDarkMode:(id)sender {
    if(_dark == FALSE){
        [_sortArray switchBlackMode:_dark];
        _dark = TRUE;
    }
    else{
        [_sortArray switchBlackMode:_dark];
        _dark = FALSE;
        
    }
    
    
}

- (IBAction)btnRandomNumbers:(id)sender {
    [_array removeAllObjects];
    [_array addObjectsFromArray:[_sortArray makeRandomNumbers]];
    [_mainTableView reloadData];
}
@end
