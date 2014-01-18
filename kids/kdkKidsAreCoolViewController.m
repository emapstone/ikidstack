//
//  kdkKidsAreCoolViewController.m
//  kids
//
//  Created by Ellen Hardy on 1/17/14.
//  Copyright (c) 2014 Ellen Hardy. All rights reserved.
//

#import "kdkKidsAreCoolViewController.h"
#import "kdkKid.h"

@interface kdkKidsAreCoolViewController ()

@property NSMutableArray *kidsList;

@end

@implementation kdkKidsAreCoolViewController

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    
}


- (void)loadData {
    //I want to load in the data from core data eventually, but I want this to work first.
    kdkKid *kid1 = [[kdkKid alloc] init];
    kid1.kidName = @"Julie";
    kid1.kidFavoriteColor = @"Blue";
    kid1.kidFavoriteToy = @"Clue";
    [self.kidsList addObject:kid1];
    
    kdkKid *kid2 = [[kdkKid alloc] init];
    kid2.kidName = @"James";
    kid2.kidFavoriteColor = @"Red";
    kid2.kidFavoriteToy = @"Mario";
    [self.kidsList addObject:kid2];
    
}
    

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.kidsList = [[NSMutableArray alloc] init];
    [self loadData];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.kidsList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ListPrototypeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    kdkKid *kid = [self.kidsList objectAtIndex:indexPath.row];
    cell.textLabel.text = kid.kidFavoriteColor;
    // if you add other fields, it overwrites them, so figure out another way to add multiple fields to table row
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
