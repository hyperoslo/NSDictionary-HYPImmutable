#import "NSDictionary+HYPImmutable.h"

@implementation NSDictionary (HYPImmutable)

- (NSDictionary *)hyp_dictionaryByRemovingNullItems
{
    NSMutableArray *keysForNullValues = [NSMutableArray new];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if ([obj isKindOfClass:[NSNull class]]) {
            [keysForNullValues addObject:key];
        }
    }];

    NSMutableDictionary *values = [self mutableCopy];
    [values removeObjectsForKeys:keysForNullValues];

    return [values copy];
}

@end
