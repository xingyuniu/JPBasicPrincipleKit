#### 打印内容
```swift
print xxx、p xxx ---> 打印内容
p/x xxx ---> 以16机制形式打印（x在/右边代表16进制）
po xxx ---> 以对象的形式打印
p (IMP)xxx ---> 打印方法信息，要在地址前面加“(IMP)”
```

#### x —> 查看地址存的内容
```swift
1：x 0x10282b9c0 ---> View Memory形式
打印：
0x10282b9c0: 19 21 eb 94 ff ff 1d 00 00 00 00 00 00 00 00 00  .!..............
0x10282b9d0: 2d 5b 4e 53 54 69 74 6c 65 62 61 72 56 69 65 77  -[NSTitlebarView

2：x/5xg 0x0000000100008468 ---> 规定格式（右边的x代表16进制，g代表8个字节为一组，5代表给5组）
打印：
0x100008468: 0x000000000000000b 0x0000000000000000
0x100008478: 0x0000000000000000 0x0000000000000000
0x100008488: 0x0000000000000000
```

#### 查看方法地址：
```swift
[obj methodForSelector:@selector(test)]
```

#### 查看方法信息：p (IMP)方法地址
```swift
p (IMP)0x109924060 ==> (IMP) $1 = 0x0000000109924060 (01-KVO`-[JPPerson setAge:] at JPPerson.m:13)
```

#### 查看完整的函数调用栈
```swift
bt ---> breakpoint tree
```

#### 断点调试
```swift
n：单步运行，遇到子函数不会进去，当作一步跳过（代码层面）
s：单步运行，遇到子函数会进去（代码层面）
ni：单步运行，遇到子函数不会进去，当作一步跳过（汇编层面）
si：单步运行，遇到子函数会进去（汇编层面）
finish：直接执行完当前函数所有代码，回到外面那层函数，有断点就去到断点处
```

#### 查看寄存器存的内容（地址）
```swift
register read rax
打印：
rax = 0x0000000100008468  JPTestSwift6`static JPTestSwift6.Car.price : Swift.Int
```