![Logo](https://avatars3.githubusercontent.com/u/13508076?v=3&s=460)
# QHashString

- The extension method for NSString Hash.
- The NSString category for MD5, SHA1, SHA256, SHA512 Hash, and hashes of files with small memory usage

GitHub：[QianChia](https://github.com/QianChia) ｜ Blog：[QianChia(Chinese)](http://www.cnblogs.com/QianChia)

---
## Installation

### From CocoaPods

- `pod 'QHashString'`

### Manually
- Drag all source files under floder `QHashString` to your project.
- Import the main header file：`#import "QHashString.h"`

---
## Examples

### NSString hash methods

* `[string q_md5String]`
* `[string q_sha1String]`
* `[string q_sha224String]`
* `[string q_sha256String]`
* `[string q_sha384String]`
* `[string q_sha512String]`

### HMAC hash methods 

* `[string q_hmacMD5StringWithKey:key]`
* `[string q_hmacSHA1StringWithKey:key]`
* `[string q_hmacSHA256StringWithKey:key]`
* `[string q_hmacSHA256StringWithKey:key]`

### TIME HMAC hash methods 

* `[string q_timeMD5StringWithKey:key]`

### File hash methods

* `[filePath q_fileMD5Hash]`
* `[filePath q_fileSHA1Hash]`
* `[filePath q_fileSHA256Hash]`
* `[filePath q_fileSHA512Hash]`

### Hash methods 

```objc
	
	NSString *str = @"hello world";
	NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Info.plist" ofType:nil];
    
	NSString *md5Str = [str q_md5String];
  	
	NSString *hmacStr = [str q_hmacMD5StringWithKey:@"yourKey"];
   	
	NSString *timeStr = [str q_timeMD5StringWithKey:@"yourKey"];
	
	NSString *fileMD5Str = [filePath q_fileMD5Hash];
	
```
	
