//
//  ObjectiveC_Hander.h
//  SQLiteLibTest
//
//  Created by wang yu on 2021/10/11.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjectiveC_Hander : NSObject

+(BOOL)runNormalSql:(NSString *)sqlString;
+(NSArray *)selectSql:(NSString *)sqlString;

@end

NS_ASSUME_NONNULL_END
