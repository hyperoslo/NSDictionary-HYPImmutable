@import Foundation;

@interface NSDictionary (HYPImmutable)

- (NSDictionary *)hyp_dictionaryByRemovingNullItems;

- (NSDictionary *)hyp_dictionaryByRemovingKey:(id <NSCopying>)key;
- (NSDictionary *)hyp_dictionaryBySettingObject:(id)object forKey:(id <NSCopying>)key;
- (NSDictionary *)hyp_dictionaryByAppendingDictionary:(NSDictionary *)dicitonary;

@end
