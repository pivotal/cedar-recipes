#import "BDDAppDelegate.h"
#import "BDDRecipesViewController.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(BDDAppDelegateSpec)


describe(@"BDDAppDelegate", ^{
    __block BDDAppDelegate *delegate; // 1.
    
    beforeEach(^{
        delegate = [[[BDDAppDelegate alloc] init] autorelease]; // 2.
    });
    
    context(@"when the app is finished loading", ^{ // 3.
        beforeEach(^{ // 4.
            [delegate application:nil didFinishLaunchingWithOptions:nil];
        });
        
        it(@"should display recipes", ^{
            delegate.window.rootViewController should be_instance_of([BDDRecipesViewController class]); // 5.
        });
    });
});

SPEC_END
