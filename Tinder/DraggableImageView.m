//
//  DraggableImageView.m
//  Tinder
//
//  Created by Devin Bhushan on 9/18/15.
//  Copyright © 2015 Yahoo. All rights reserved.
//

#import "DraggableImageView.h"

@interface DraggableImageView ()
@property(strong, nonatomic) IBOutlet UIImageView *draggableImage;

@end

@implementation DraggableImageView

- (void)setImage:(UIImage *)newImage {
  NSLog(@"Setting image: %@", newImage);
  self.draggableImage.image = newImage;
}

//- (UIImageView *)draggableImage {
//  return self.draggableImage;
//}
//
//- (void)setDraggableImage:(UIImageView *)draggableImage {
//  self.draggableImage = draggableImage;
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
