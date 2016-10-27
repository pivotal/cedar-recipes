cedar-recipes
=============

Code for [Test Driven iPhone Development with Cedar](http://pivotallabs.com/test-driven-iphone-development-with-cedar/) blog post.

[Cedar](https://github.com/pivotal/cedar), an open source
[BDD](http://en.wikipedia.org/wiki/Behavior-driven_development) testing
framework from [Pivotal Labs](http://pivotallabs.com/), makes developing
test-driven iOS apps quick and easy. The framework provides a large library of
[matchers](https://github.com/pivotal/cedar/wiki/Writing-specs#matchers) so you
can start testing right away on a large collection of objects. If you are
familiar with [RSpec](http://rspec.info/) or
[Jasmine](http://jasmine.github.io/) you will immediately recognize the
syntax for writing tests. 

```
describe(@"this tutorial", ^{
    it(@"makes setting up Cedar quick and easy", ^{
        yourApp.isAwesome should be_truthy;
    });
});
```

This is the first title in a series of blog posts that will teach you Cedar.
The posts will walk you through creating a simple app to save your favorite
recipes.

[Read more at pivotallabs.com](http://pivotallabs.com/test-driven-iphone-development-with-cedar/).
