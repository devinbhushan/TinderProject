//
//  CardsViewController.m
//  Tinder
//
//  Created by Devin Bhushan on 9/18/15.
//  Copyright © 2015 Yahoo. All rights reserved.
//

#import "CardsViewController.h"
#import "DraggableImageView.h"

@interface CardsViewController ()

@property CGPoint cardInitialCenter;
@property(strong, nonatomic) IBOutlet UIImageView *draggableProfileCard;

@end

@implementation CardsViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.draggableProfileCard.image = [UIImage imageNamed:@"profile"];
  //  self.draggableProfileCard.draggableImage.image =
  //      [UIImage imageNamed:@"profile"];
  //  self.profileCard = self.draggableProfileCard.draggableImage;
  // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)cardPanGesture:(id)sender {
  UIPanGestureRecognizer *gesture = (UIPanGestureRecognizer *)sender;
  NSLog(@"Detected pan gesture");

  switch (gesture.state) {
  case UIGestureRecognizerStateBegan: {
    self.cardInitialCenter = self.draggableProfileCard.center;
    break;
  }
  case UIGestureRecognizerStateChanged: {
    CGPoint translatedPoint = [(UIPanGestureRecognizer *)sender
        translationInView:self.draggableProfileCard];

    self.draggableProfileCard.center =
        CGPointMake(self.cardInitialCenter.x + translatedPoint.x,
                    self.cardInitialCenter.y + translatedPoint.y);
    break;
  }
  case UIGestureRecognizerStateEnded: {
    NSLog(@"Gesture ended!");
    //    CGPoint velocity = [sender velocityInView:self.trayView];
    //    if (velocity.y < 0) {
    //      [UIView animateWithDuration:0.25
    //                       animations:^{
    //                         self.trayView.center = self.upPosition;
    //                       }];
    //      NSLog(@"Go up!");
    //    } else {
    //      [UIView animateWithDuration:0.5
    //                       animations:^{
    //                         self.trayView.center = self.downPosition;
    //                       }];
    //      NSLog(@"Go down!");
    //    }
    break;
  }
  default:
    NSLog(@"Unhandled case");
  }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little
preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
