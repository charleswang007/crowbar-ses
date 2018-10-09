# Crowbar: SES

The code and documentation is distributed under the [Apache 2 license](http://www.apache.org/licenses/LICENSE-2.0.html).
Contributions back to the source are encouraged.

The [Crowbar Framework](https://github.com/crowbar/crowbar) is currently maintained by [SUSE](http://www.suse.com/) as
an [OpenStack](http://openstack.org) installation framework but is prepared to be a much broader function tool. It was
originally developed by the [Dell CloudEdge Solutions Team](http://dell.com/openstack).

The **SES** barclamp does the following:

Given an already exported configuration file (from SES 5.5), an administrator following documentation can use Crowbar to configure SOC 8 to access/use the ceph storage provided by SES 5.5.

## TO-DO's

1) put SES barclamp under crowbar-ceph or crowbar-openstack

2) provide manual user input & import function for SES config

3) centralize the data configuration to one place

4) automate the setup pieces that are currently missing (generation of ceph.conf & the cephx user credential files). 

## Problem

1) Not able to display the attribute select field on propopal edit page as defined in crowbar_framework/app/views/barclamp/ses/_edit_attributes.html.haml

![alt text](https://github.com/charleswang007/crowbar-ses/blob/master/chef/cookbooks/ses/files/default/ses-barclamp-edit.png) "ses-barclamp-edit.png"

## Usage Example

* Parse a SES configuration

```
cd chef/cookbooks/ses/files/default/ 
ruby ses-parse.rb sample-config.yml
```

> ceph_conf:

>   cluster_network: 10.84.56.0/21

>   fsid: d5d7c7cb-5858-3218-a36f-d028df7b0673

>   mon_host: 10.84.56.8, 10.84.56.9, 10.84.56.7

>   mon_initial_members: ses-osd2, ses-osd3, ses-osd1

>   public_network: 10.84.56.0/21

>　cinder:

>   key: AQCdfIRaxefEMxAAW4zp2My/5HjoST2Y8mJg8A==

>   rbd_store_pool: user-cinder

>　  rbd_store_user: cinder

>　cinder-backup:

>　  key: AQBb8hdbrY2bNRAAqJC2ZzR5Q4yrionh7V5PkQ==

>　  rbd_store_pool: user-backups

>　  rbd_store_user: cinder-backup

>　glance:

>　  key: AQD9eYRachg1NxAAiT6Hw/xYDA1vwSWLItLpgA==

>　  rbd_store_pool: user-glance

>　  rbd_store_user: glance

>　nova:

>　  rbd_store_pool: user-nova

>　radosgw_urls: []


## Reference

[Crowbar-Ceph](https://github.com/crowbar/crowbar-ceph)

## Badges

[![Build Status](https://travis-ci.org/crowbar/crowbar-ses.svg?branch=master)](https://travis-ci.org/crowbar/crowbar-ses)
[![Code Climate](https://codeclimate.com/github/crowbar/crowbar-ses/badges/gpa.svg)](https://codeclimate.com/github/crowbar/crowbar-ses)
[![Test Coverage](https://codeclimate.com/github/crowbar/crowbar-ses/badges/coverage.svg)](https://codeclimate.com/github/crowbar/crowbar-ses)
[![Dependency Status](https://gemnasium.com/crowbar/crowbar-ses.svg)](https://gemnasium.com/crowbar/crowbar-ses)
[![Join the chat at https://gitter.im/crowbar/crowbar](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/crowbar/crowbar)

## Contact

To get in contact with the developers you have multiple options, all of them are listed below:

* [Google Mailinglist](https://groups.google.com/forum/#!forum/crowbar)
* [Gitter Chat](https://gitter.im/crowbar/crowbar)
* [Freenode Webchat](http://webchat.freenode.net/?channels=%23crowbar)

## Legals

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.
