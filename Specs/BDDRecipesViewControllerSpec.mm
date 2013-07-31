#import "BDDRecipesViewController.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(BDDRecipesViewControllerSpec)

describe(@"BDDRecipesViewController", ^{
    __block BDDRecipesViewController *viewController;
    __block NSArray *recipes;
    
    beforeEach(^{
        viewController = [[BDDRecipesViewController alloc] init];
        recipes = @[@"Hamburgers", @"Guacamole", @"Bigos", @"Spaghetti"];
    });
    
    afterEach(^{
        [viewController release];
    });
    
    describe(@"-numberOfSectionsInTableView:", ^{
        it(@"should return 1", ^{
            viewController.view should_not be_nil;
            
            [viewController numberOfSectionsInTableView:viewController.tableView] should equal(1);
        });
    });
    
    describe(@"-tableView:numberOfRowsInSection:", ^{
        it(@"should return the number of rows for the table view", ^{
            viewController.view should_not be_nil;
            
            viewController.recipes = recipes;
            
            [viewController tableView:viewController.tableView numberOfRowsInSection:0] should equal(4);
        });
    });
    
    describe(@"-tableView:cellForRowAtIndexPath", ^{
        it(@"should return a table view cell with the right label", ^{
            viewController.view should_not be_nil;
            
            viewController.recipes = recipes;
            
            NSIndexPath *indexPath = [NSIndexPath indexPathForItem:0 inSection:0];
            UITableViewCell *cell = [viewController tableView:viewController.tableView cellForRowAtIndexPath:indexPath];

            cell.textLabel.text should equal(@"Hamburgers");
        });
    });

});

SPEC_END
