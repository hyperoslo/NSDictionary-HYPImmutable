@import UIKit;
@import XCTest;

#import "NSDictionary+HYPImmutable.h"

@interface PodTests : XCTestCase

@end

@implementation PodTests

- (void)testDictionaryByRemovingNullItems
{
    NSDictionary *dictionary = @{@"first_name" : @"Domenica",
                                 @"last_name" : [NSNull null]};

    XCTAssertEqualObjects([dictionary hyp_dictionaryByRemovingNullItems], @{@"first_name" : @"Domenica"});
}

@end
