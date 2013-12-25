#import "Headers.h"

static NSBundle *_@@PROJECTNAME@@WeeAppBundle = nil;

@interface @@PROJECTNAME@@Controller: _SBUIWidgetViewController {
	UIView *_weeView;
}
@property (nonatomic, retain) UIView *weeView;
@end

@implementation @@PROJECTNAME@@Controller
@synthesize weeView = _weeView;

+ (void)initialize
{
	_@@PROJECTNAME@@WeeAppBundle = [[NSBundle bundleForClass:[self class]] retain];
	//This bundle gets loaded so you can easily access images in the weeapp bundle
}

- (id)init
{
	if (self = [super init]) {
		//Custom initialisation
		_weeView = [[UIView alloc] initWithFrame:(CGRect){CGPointZero, [self preferredViewSize]}];
		_weeView.autoresizingMask = UIViewAutoresizingFlexibleWidth;

		self.view = _weeView;

		//You could add subviews here
	}
	return self;
}

-(CGSize)preferredViewSize
{
	return CGSizeMake(280,100);
	//Of course return which size you need
}

- (void)unloadView {
	[weeView release];
	_weeView = nil;
	// Destroy any additional subviews you added here. Don't waste memory :(.
}

- (void)dealloc {
	[weeView release];
	[super dealloc];
}


#pragma mark state change notification

- (void)hostDidDismiss
{
	[super hostDidDismiss];
	//Notification Center was closed
}
- (void)hostDidPresent
{
	[super hostDidPresent];
	//Notification Center was opened
}

@end
