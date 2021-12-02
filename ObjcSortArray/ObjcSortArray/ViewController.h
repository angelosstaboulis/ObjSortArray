//
//  ViewController.h
//  ObjcSortArray
//
//  Created by Angelos Staboulis on 28/11/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UIButton *btnSort;
@property (strong, nonatomic) IBOutlet UIButton *btnDarkMode;
@property (strong, nonatomic) IBOutlet UIButton *btnRandomNumbers;
- (IBAction)btnRandomNumbers:(id)sender;
- (IBAction)btnDarkMode:(id)sender;
- (IBAction)btnSort:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *mainTableView;
@property NSMutableArray *array;
@property BOOL dark;
@end

