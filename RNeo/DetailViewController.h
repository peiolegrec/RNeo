//
//  DetailViewController.h
//  RNeo
//
//  Created by Peio Mujica on 06/04/13.
//  Copyright (c) 2013 Peio Mujica. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
