# Release History

### 1.5.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.4.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.4.0 (2025-03-04)

#### Features

* Added disaster recovery replication status to the Reservation resource 
* Support "Gemini in BigQuery" features in a reservation assignment 
* Support continuous SQL jobs in a reservation 
#### Bug Fixes

* Set the proper 5-minute timeout for the failover_reservation RPC 

### 1.3.0 (2025-01-29)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Include note about validating externally-provided credentials 

### 1.2.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.1.0 (2024-12-04)

#### Features

* Support for CapacityCommitment#is_flat_rate 
* Support for replica location fields in the Reservation resource 
* Support for the failover_reservation RPC 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 1.0.0 (2024-07-08)

#### Features

* Bump version to 1.0.0 

### 0.12.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24865](https://github.com/googleapis/google-cloud-ruby/issues/24865)) 

### 0.11.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.11.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.11.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23775](https://github.com/googleapis/google-cloud-ruby/issues/23775)) 

### 0.10.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22917](https://github.com/googleapis/google-cloud-ruby/issues/22917)) 

### 0.9.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21672](https://github.com/googleapis/google-cloud-ruby/issues/21672)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.8.1 (2023-03-29)

#### Documentation

* Clarify that editions are a preview feature ([#21017](https://github.com/googleapis/google-cloud-ruby/issues/21017)) 

### 0.8.0 (2023-03-24)

#### Features

* Added new types of CommitmentPlan in CapacityCommitment 
* Added support for Autoscale 
* Added support for Edition ([#20997](https://github.com/googleapis/google-cloud-ruby/issues/20997)) 

### 0.7.0 (2023-03-08)

#### Features

* Support REST transport ([#20625](https://github.com/googleapis/google-cloud-ruby/issues/20625)) 

### 0.6.0 (2022-07-01)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.5.0 (2022-04-14)

#### Features

* Support for updating existing assignments
* Support for setting the maximum number of concurrent queries in a reservation
* Support for placing a reservation in the secondary region, if available
* Support for setting the preferred tables for BI capacity

### 0.4.2 / 2022-01-11

#### Bug Fixes

* Increase call timeouts to 5 minutes

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.4.1 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.4.0 / 2021-09-07

#### Features

* Support setting the ID in create_capacity_commitment and create_assignment
* Support for force-deleting capacity commitments
* Deprecated search_assignments call and added search_all_assignments as replacement
* Added creation and update time fields to Reservation
* Added start time field to CapacityCommitment
* Added ML_EXTERNAL job type

#### Bug Fixes

* Update RPC timeout settings
* Fixed a typo in the paths returned by the bi_reservation_path helper

### 0.3.3 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.3.2 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.3.1 / 2021-06-17

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.3.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.2.0 / 2021-02-02

#### Features

* Use self-signed JWT credentials when possible

### 0.1.3 / 2021-01-20

#### Documentation

* Timeout config description correctly gives the units as seconds.

### 0.1.2 / 2020-08-10

#### Bug Fixes

* Allow special symbolic credentials in client configs

### 0.1.1 / 2020-08-06

#### Bug Fixes

* Fix retry logic by checking the correct numeric error codes

### 0.1.0 / 2020-06-25

Initial release.
