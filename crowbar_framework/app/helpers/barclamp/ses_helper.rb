#
# Copyright 2011-2013, Dell
# Copyright 2013-2014, SUSE LINUX Products GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

module Barclamp
  module SesHelper
    def default_location_for_ceph(selected)
      options_for_select(
        [
          ["Internal", "internal"],
          ["External", "external"]
        ],
        selected.to_s
      )
    end
    def default_format_for_config(selected)
      options_for_select(
        [
          ["YAML", "yaml"],
          ["JSON", "json"],
          ["INI", "ini"]
        ],
        selected.to_s
      )
    end
  end
end
