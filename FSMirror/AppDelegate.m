//
//  AppDelegate.m
//  FSMirror
//
//  Created by Josh Puckett on 8/28/14.
//  Copyright (c) 2014 Josh Puckett. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    NSString *urlString = [url absoluteString];
    NSString *path = [urlString substringFromIndex:NSMaxRange([urlString rangeOfString:@"://"])];
    NSDictionary *pathUserInfo = @{ @"path" : path };
    [[NSNotificationCenter defaultCenter] postNotificationName:@"FSMirrorURLPath" object:nil userInfo:pathUserInfo];
    return YES;
}

							

@end
