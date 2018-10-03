# Crowbar: SES

The code and documentation is distributed under the [Apache 2 license](http://www.apache.org/licenses/LICENSE-2.0.html).
Contributions back to the source are encouraged.

The [Crowbar Framework](https://github.com/crowbar/crowbar) is currently maintained by [SUSE](http://www.suse.com/) as
an [OpenStack](http://openstack.org) installation framework but is prepared to be a much broader function tool. It was
originally developed by the [Dell CloudEdge Solutions Team](http://dell.com/openstack).

The Crowbar-SES barclamp does the following:

Given an already exported configuration file (from SES 5.5), an administrator following documentation can use Crowbar to configure SOC 8 to access/use the ceph storage provided by SES 5.5.

## Usage Example

* Parse a SES configuration

```
cd chef/roles/
ruby ses-parse.rb sample-config.yml
```

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
