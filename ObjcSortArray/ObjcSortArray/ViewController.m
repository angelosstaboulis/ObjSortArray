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

- (void)viewDidLoad {
    [super viewDidLoad];
    _dark = FALSE;
    _array = [[NSMutableArray alloc] init];
    [_mainTableView setDelegate:self];
    [_mainTableView setDataSource:self];
    for(int item=0;item<10;item++){
        [_array addObject:[NSString stringWithFormat:@"%d",arc4random_uniform(1000)]];
    }
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
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"intValue" ascending:TRUE];
    [_array sortUsingDescriptors:@[descriptor]];
    
    [_mainTableView reloadData];
}

- (IBAction)btnDarkMode:(id)sender {
    if(_dark == FALSE){
        UIApplication *app = [UIApplication sharedApplication];
        SceneDelegate *scene = (SceneDelegate *) [[[[app connectedScenes] allObjects] firstObject] delegate];
        [scene.window setOverrideUserInterfaceStyle:UIUserInterfaceStyleDark];
        _dark = TRUE;
    }
    else{
        _dark = FALSE;
        UIApplication *app = [UIApplication sharedApplication];
        SceneDelegate *scene = (SceneDelegate *) [[[[app connectedScenes] allObjects] firstObject] delegate];
        [scene.window setOverrideUserInterfaceStyle:UIUserInterfaceStyleLight];
    }
    
    
}

- (IBAction)btnRandomNumbers:(id)sender {
    [_array removeAllObjects];
    for(int item=0;item<10;item++){
        [_array addObject:[NSString stringWithFormat:@"%d",arc4random_uniform(1000)]];
    }
    [_mainTableView reloadData];
 }
@end
