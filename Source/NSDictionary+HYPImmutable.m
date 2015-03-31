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

- (NSDictionary *)hyp_dictionaryByRemovingKey:(id <NSCopying>)key
{
    NSMutableDictionary *dictionary = [self mutableCopy];
    [dictionary removeObjectForKey:key];

    return [dictionary copy];
}

- (NSDictionary *)hyp_dictionaryBySettingObject:(id)object forKey:(id <NSCopying>)key
{
    NSMutableDictionary *dictionary = [self mutableCopy];
    [dictionary setObject:object forKey:key];

    return [dictionary copy];
}

- (NSDictionary *)hyp_dictionaryByAppendingDictionary:(NSDictionary *)dicitonary
{
    NSMutableDictionary *mutableDictionary = [self mutableCopy];
    [mutableDictionary addEntriesFromDictionary:dicitonary];

    return [mutableDictionary copy];
}
@end
