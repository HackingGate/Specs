# Specs
My CocoaPods Repo  

Collect some pod specs that [CocoaPods Master Repo](https://github.com/CocoaPods/Specs) doesn't have.  

#### Example of Podfile

```
# coding: utf-8
source 'https://github.com/HackingGate/Specs.git'
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '7.0'
inhibit_all_warnings!

pod 'SDWebImage-DecoderFixed', '~> 3.7.4'
```

#### Fixed KBPGP dependency for ios 

`TSTripleSec` depended upon by `KBPGP`

`NACrypto` depended upon by `TSTripleSec`

And `NACrypto` causes this error message on Cocoapods.  

```
The platform of the target `YOUR-TARGET` is not compatible with `NACrypto (1.1.0)`, which does not support `ios`.
```

To fix it, just add `source 'https://github.com/HackingGate/Specs.git'` in your Podfile. 


#### Fix use_frameworks! for Swift projects

Error message: 

```
[!] The 'TARGET-NAME' target has transitive dependencies that include static binaries: (/...path.../Pods/OpenSSL-Static/lib-ios/libcrypto.a and /...path.../Pods/OpenSSL-Static/lib-ios/libssl.a)
```

There is a [workaround](https://github.com/CocoaPods/CocoaPods/issues/3289#issuecomment-313726321) for this

```
pre_install do |installer|
	    # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
	    Pod::Installer::Xcode::TargetValidator.send(:define_method, :verify_no_static_framework_transitive_dependencies) {}
end
```


