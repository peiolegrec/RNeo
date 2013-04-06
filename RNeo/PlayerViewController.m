//
//  PlayerViewController.m
//  RNeo
//
//  Created by Peio Mujica on 06/04/13.
//  Copyright (c) 2013 Peio Mujica. All rights reserved.
//

#import "PlayerViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface PlayerViewController ()

@property (strong, nonatomic) MPMoviePlayerController *streamPlayer;
@end

@implementation PlayerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(BOOL)checkNetwork
{
	return true; 
}
-(void)MPPlayerStateDidChange
{
	NSLog([NSString stringWithFormat:@"%d", self.streamPlayer.loadState]);
}

-(IBAction)playButtonPressed:(id)sender
{

	NSURL *streamURL = [NSURL URLWithString:@"http://stream.radioneo.org:8000/;chat.mp3"];
	
	_streamPlayer = [[MPMoviePlayerController alloc] initWithContentURL:streamURL];
	
    // depending on your implementation your view may not have it's bounds set here
    // in that case consider calling the following 4 msgs later
    [self.streamPlayer.view setFrame: self.view.bounds];
	
    self.streamPlayer.controlStyle = MPMovieControlStyleEmbedded;
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(MPPlayerStateDidChange:)
												 name:MPMoviePlayerScalingModeDidChangeNotification
											   object:self.streamPlayer];
   // [self.view addSubview: self.streamPlayer.view];
	
    [self.streamPlayer play];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
