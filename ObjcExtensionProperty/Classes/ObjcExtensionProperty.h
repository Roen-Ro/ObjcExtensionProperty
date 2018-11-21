//
//  ObjcExtensionProperty.h
//  Pods
//
//  Created by 罗亮富(Roen-Ro) zxllf23@163.com on 2018/11/20.
//  github profile:https://github.com/Roen-Ro

#ifndef DynamicGetterSetter_h
#define DynamicGetterSetter_h

#import <objc/runtime.h>
#import "WeakReference.h"


#define lazy readonly

//instance variable backed lazy getter method, typically for class implementation
#define __GETTER_LAZY_IVAR(Class,name,initializer...) -(Class *)name { \
if(!_##name){             \
_##name = initializer; \
} \
return _##name;\
}

//getter and setter methods macro defines for dynamic binded varaiables, typically for properties defined in class extensions
#define __GETTER_LAZY(Class,name,initializer...) -(Class *)name { \
IMP key = class_getMethodImplementation([self class],@selector(name));\
id obj = objc_getAssociatedObject(self,key); \
if(!obj){             \
obj = initializer; \
objc_setAssociatedObject(self, key, obj, OBJC_ASSOCIATION_RETAIN_NONATOMIC);\
} \
return obj;\
}

#define __GETTER(Class,name) -(Class *)name { \
IMP key = class_getMethodImplementation([self class],@selector(name));\
id obj = objc_getAssociatedObject(self,key); \
return obj;\
}

#define __SETTER(name,setter,association) -(void)setter:(id)name { \
IMP key = class_getMethodImplementation([self class],@selector(name));\
objc_setAssociatedObject(self, key, name, association);\
}

#define __GETTER_WEAK(Class,name) -(Class *)name { \
IMP key = class_getMethodImplementation([self class],@selector(name));\
WeakReference *p = objc_getAssociatedObject(self, key); \
return p.weakObj; \
}

#define __SETTER_WEAK(name,setter) -(void)setter:(id)name { \
IMP key = class_getMethodImplementation([self class],@selector(name));\
if(name) { \
WeakReference *p = objc_getAssociatedObject(self, key);\
if(!p) { \
p = [WeakReference alloc]; \
objc_setAssociatedObject(self, key, p, OBJC_ASSOCIATION_RETAIN);\
} \
p.weakObj = name; \
} \
else \
objc_setAssociatedObject(self, key, nil, OBJC_ASSOCIATION_RETAIN); \
}

#define __GETTER_PRIMITIVE(type,name,NSNumberMethod) -(type)name { \
IMP key = class_getMethodImplementation([self class],@selector(name));\
NSNumber *num = objc_getAssociatedObject(self,key); \
return num.NSNumberMethod;\
}

#define __SETTER_PRIMITIVE(type,name,setter,NSNumberMethod) -(void)setter:(type)name { \
IMP key = class_getMethodImplementation([self class],@selector(name));\
objc_setAssociatedObject(self, key, [NSNumber NSNumberMethod name], OBJC_ASSOCIATION_RETAIN_NONATOMIC);\
}

#endif /* DynamicGetterSetter_h */


