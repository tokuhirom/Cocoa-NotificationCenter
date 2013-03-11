#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

// undefine Move macro, this is conflict to Mac OS X QuickDraw API.
#undef Move

#import <Foundation/Foundation.h>
#include <AppKit/AppKit.h>
#import <objc/runtime.h>

XS(growl_notify) {
    dXSARGS;

    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    NSUserNotification *myNotification = [[NSUserNotification alloc] init];
    myNotification.title = @"Hello, world!";
    myNotification.informativeText = @"Nice to meet you.";
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:myNotification];

    [NSApp terminate: nil];

    [pool release];
}

XS(boot_Cocoa__NotificationCenter) {
    NSAutoreleasePool* pool;

    pool = [[NSAutoreleasePool alloc] init];
    [NSApp run];
    [pool release];

    newXS("Cocoa::NotificationCenter::notify", growl_notify, __FILE__);
}

