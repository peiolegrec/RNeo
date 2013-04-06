//
//  MasterViewController.h
//  RNeo
//
//  Created by Peio Mujica on 06/04/13.
//  Copyright (c) 2013 Peio Mujica. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
