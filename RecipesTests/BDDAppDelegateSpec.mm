#import <Cedar/Cedar.h>
#import "BDDAppDelegate.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(BDDAppDelegateSpec)

describe(@"BDDAppDelegate", ^{
    __block BDDAppDelegate *delegate = nil;

    beforeEach(^{
        delegate = [UIApplication sharedApplication].delegate; // 2.
        if(delegate == nil)
        {
            delegate = [[BDDAppDelegate alloc] init];
            [delegate application:nil didFinishLaunchingWithOptions:nil];
        }
    });
    
    context(@"when the app is finished loading", ^{ // 3.
        beforeEach(^{ // 4.
            delegate should_not be_nil;
        });
        
        it(@"should display a table view", ^{
            delegate.window.rootViewController should be_instance_of([UITableViewController class]); // 5.
        });
    });
});

SPEC_END
