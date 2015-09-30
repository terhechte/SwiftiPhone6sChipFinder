//
//  Bridging-Header.h
//  ChipFinder
//
//  Created by Benedikt Terhechte on 30/09/15.
//  Copyright © 2015 Benedikt Terhechte. All rights reserved.
//

#ifndef Bridging_Header_h
#define Bridging_Header_h

#include <CoreFoundation/CoreFoundation.h>

#if __cplusplus
extern "C" {
#endif
    CFPropertyListRef MGCopyAnswer(CFStringRef property);
#if __cplusplus
}
#endif

#endif /* Bridging_Header_h */
