//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

#import <Foundation/Foundation.h>
#import <IOKit/hidsystem/IOHIDEventSystemClient.h>
#import <IOKit/hidsystem/IOHIDServiceClient.h>
#import <IOKit/hid/IOHIDUsageTables.h>

int manipulateKey(uint64 key, uint64_t toKey) {
    IOHIDEventSystemClientRef system;
    CFArrayRef services;
    
    NSArray *map = @[@{@kIOHIDKeyboardModifierMappingSrcKey:@(key), @kIOHIDKeyboardModifierMappingDstKey:@(toKey)}];
    
    system = IOHIDEventSystemClientCreateSimpleClient(kCFAllocatorDefault);
    services = IOHIDEventSystemClientCopyServices(system);
    for(CFIndex i = 0; i < CFArrayGetCount(services); i++) {
        IOHIDServiceClientRef service = (IOHIDServiceClientRef)CFArrayGetValueAtIndex(services, i);
        if(IOHIDServiceClientConformsTo(service, kHIDPage_GenericDesktop, kHIDUsage_GD_Keyboard)) {
            IOHIDServiceClientSetProperty(service, CFSTR(kIOHIDUserKeyUsageMapKey), (CFArrayRef)map);
        }
    }
    
    CFRelease(services);
    CFRelease(system);
    
    return 0;
}
