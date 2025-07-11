# Changelog

### 1.4.1 (2025-06-05)

#### Documentation

* Add clarifications on IAP CorsSettings behavior ([#30483](https://github.com/googleapis/google-cloud-ruby/issues/30483)) 

### 1.4.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.3.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.3.0 (2025-04-21)

#### Features

* Identity-aware Proxy (IAP) released a feature Use IAP with Workforce Identity Federation ([#29463](https://github.com/googleapis/google-cloud-ruby/issues/29463)) 
#### Documentation

* update fields to optional and other updates 

### 1.2.0 (2025-01-29)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Include note about validating externally-provided credentials 

### 1.1.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.12.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24871](https://github.com/googleapis/google-cloud-ruby/issues/24871)) 

### 0.11.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.11.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.11.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23780](https://github.com/googleapis/google-cloud-ruby/issues/23780)) 

### 0.10.1 (2023-09-25)

#### Documentation

* fix Oauth typo ([#23345](https://github.com/googleapis/google-cloud-ruby/issues/23345)) 

### 0.10.0 (2023-09-19)

#### Features

* Added OAuthSettings#programmatic_clients ([#23335](https://github.com/googleapis/google-cloud-ruby/issues/23335)) 

### 0.9.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22920](https://github.com/googleapis/google-cloud-ruby/issues/22920)) 

### 0.8.1 (2023-08-04)

#### Documentation

* Improve documentation format ([#22684](https://github.com/googleapis/google-cloud-ruby/issues/22684)) 

### 0.8.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21675](https://github.com/googleapis/google-cloud-ruby/issues/21675)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.7.0 (2023-03-15)

#### Features

* Extend options for ReauthSettings ([#20900](https://github.com/googleapis/google-cloud-ruby/issues/20900)) 

### 0.6.0 (2023-03-08)

#### Features

* Support REST transport ([#20627](https://github.com/googleapis/google-cloud-ruby/issues/20627)) 

### 0.5.0 (2023-01-05)

#### Features

* Add field allowed domains settings to Access Settings ([#19902](https://github.com/googleapis/google-cloud-ruby/issues/19902)) 
* Add field attribute propagation settings to Application Settings 
* Add field remediation token generation enabled to Access Denied Page Settings 

### 0.4.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.3.0 (2022-05-13)

#### Features

* Support for managing TunnelDestGroups
* Support for reauthentication policy settings

### 0.2.0 (2022-04-20)

#### Features

* Support for update masks when setting IAM policies

### 0.1.3 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.1.2 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.1.1 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.1.0 / 2021-07-23

#### Features

* Initial generation of google-cloud-iap-v1
