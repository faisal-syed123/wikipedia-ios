//  Created by Monte Hurd on 2/25/14.

#import "UIScrollView+ScrollSubviewToLocation.h"

@implementation UIScrollView (ScrollSubviewToLocation)

-(void)scrollSubViewToTop:(UIView *)subview
{
    // Find the scroll view's subview location in the scroll view's superview coordinates.
    CGPoint locationInSuperview = [subview convertPoint:CGPointZero toView:self.superview];
    // Determine how far the scroll view will need to be scrolled to move the subview's top
    // just beneath the navigation bar.
    CGFloat yOffset = self.contentOffset.y + (locationInSuperview.y - self.scrollIndicatorInsets.top);
    // Scroll!
    [self setContentOffset:CGPointMake(self.contentOffset.x, yOffset) animated:YES];
}

@end
