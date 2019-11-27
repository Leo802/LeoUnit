//
//  LeoLog.h
//  Example
//
//  Created by Leo on 2019/11/27.
//  Copyright © 2019 leo. All rights reserved.
//

#ifndef leoLog_h
#define leoLog_h

static NSString *leoLogPrefix = @"LEO";

#ifdef DEBUG
# define LOG_E(fmt, ...) NSLog((@"[%@_E]%s[%d]:" fmt), leoLogPrefix, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
# define LOG_E(...) ;
#endif

#ifdef DEBUG
# define LOG_W(fmt, ...) NSLog((@"[%@_W]%s[%d]:" fmt), leoLogPrefix, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
# define LOG_W(...) ;
#endif

#ifdef DEBUG
# define LOG_I(fmt, ...) NSLog((@"[%@_I]%s[%d]:" fmt), leoLogPrefix, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
# define LOG_I(...) ;
#endif

#endif /* leoLog_h */
