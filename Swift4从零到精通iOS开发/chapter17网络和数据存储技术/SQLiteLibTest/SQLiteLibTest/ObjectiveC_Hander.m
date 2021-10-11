//
//  ObjectiveC_Hander.m
//  SQLiteLibTest
//
//  Created by wang yu on 2021/10/11.
//

#import "ObjectiveC_Hander.h"

@implementation ObjectiveC_Hander

+(BOOL)runNormalSql:(NSString *)sqlString{
    sqlite3 * _sqlite3_db;
    NSString * path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    NSString * file = [NSString stringWithFormat:@"%@/myDB.sqlite",path];
    sqlite3_open([file UTF8String], &_sqlite3_db);
    char * err;
    int code = sqlite3_exec(_sqlite3_db, [sqlString UTF8String], NULL, NULL, &err);
    if (code==SQLITE_OK) {
        NSLog(@"执行成功");
        return YES;
    }else{
        NSLog(@"执行失败");
        return NO;

    }
}

+(NSArray *)selectSql:(NSString *)sqlString {
    sqlite3 * _sqlite3_db;
    NSString * path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    NSString * file = [NSString stringWithFormat:@"%@/myDB.sqlite",path];
    sqlite3_open([file UTF8String], &_sqlite3_db);
    sqlite3_stmt *stmt;
    sqlite3_prepare_v2(_sqlite3_db, [sqlString UTF8String], -1, &stmt, NULL);
    NSMutableArray *result = [[NSMutableArray alloc] init];
    while (sqlite3_step(stmt)==SQLITE_ROW) {
        NSString * name = [NSString stringWithCString:sqlite3_column_text(stmt, 0) encoding:NSUTF8StringEncoding];
        int age = sqlite3_column_int(stmt, 1);
        NSLog(@"name:%@,age:%d",name,age);
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:name forKey:@"name"];
        [dic setObject:@(age) forKey:@"age"];
        [result addObject:dic];
    }
    return result;
}

@end
