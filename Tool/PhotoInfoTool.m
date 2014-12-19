//
//  PhotoInfoTool.m
//  PhotoInfoTool
//
//  Created by Wang Yandong on 7/1/14.
//  Copyright (c) 2014 Wang Yandong. All rights reserved.
//

#import <Foundation/Foundation.h>


BOOL isDeprecatedDirectory(NSString *directory)
{
    BOOL result = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isDirectory = NO;
    if ([fileManager fileExistsAtPath:directory isDirectory:&isDirectory] && isDirectory)
    {
        NSUInteger count = 0;
        BOOL targetFound = NO;
        NSArray *contents = [fileManager contentsOfDirectoryAtPath:directory error:NULL];
        for (NSString *file in contents)
        {
            if ([file hasSuffix:@"strings"])
            {
                if ([file isEqualToString:@"PhotoInfo.strings"])
                {
                    targetFound = YES;
                }
                
                ++count;
            }
        }
        
        if (targetFound && 1 == count)
        {
            result = YES;
        }
    }
    
    return result;
}

void deleteDeprecatedDirectoriesIfNeeded()
{
    @autoreleasepool
    {
        NSArray *targets = @[@"/Applications/Camera.app", @"/Applications/MobileSlideShow.app"];
        NSArray *languages = @[@"German.lproj", @"de.lproj",
                               @"English.lproj", @"en.lproj",
                               @"Italian.lproj", @"it.lproj",
                               @"Japanese.lproj", @"ja.lproj"];
        for (NSString *target in targets)
        {
            for (NSString *language in languages)
            {
                NSString *path = [target stringByAppendingPathComponent:language];
                if (isDeprecatedDirectory(path))
                {
                    [[NSFileManager defaultManager] removeItemAtPath:path error:NULL];
                }
            }
        }
    }
}


int main (int argc, const char * argv[])
{
    @autoreleasepool
    {
        deleteDeprecatedDirectoriesIfNeeded();
    }
    
	return 0;
}