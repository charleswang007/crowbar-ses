#
# Copyright 2018, SUSE LLC
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

class SesService < OpenstackServiceObject
  def initialize(thelogger = nil)
    super(thelogger)
    @bc_name = "ses"
  end
end

  class << self
    def self.allow_multiple_proposals?
      false
    end
    def role_constraints
      {
        "cinder-controller" => {
          "unique" => false,
          "count" => 1,
          "cluster" => true,
          "admin" => false,
          "exclude_platform" => {
            "suse" => "< 12.3",
            "windows" => "/.*/"
          }
        },
        "cinder-volume" => {
          "unique" => false,
          "count" => -1,
          "cluster" => true,
          "admin" => false,
          "exclude_platform" => {
            "suse" => "< 12.3",
            "windows" => "/.*/"
          }
        }
      }
    end
  end

  def proposal_dependencies(role)
    answer = []
    ["cinder", "keystone", "glance", "nova"].each do |dep|
      answer << { "barclamp" => dep, "inst" => role.default_attributes[@bc_name]["#{dep}_instance"] }
    end
    answer
  end

  def create_proposal
    @logger.debug("SES create_proposal: entering")
    base = super

    nodes = NodeObject.all
    controllers = select_nodes_for_role(nodes, "cinder-controller", "controller") || []
    storage = select_nodes_for_role(nodes, "cinder-volume", "storage") || []

    base["deployment"][@bc_name]["elements"] = {
      "cinder-controller" => controllers.empty? ? [] : [controllers.first.name],
      "cinder-volume" => storage.map { |x| x.name }
    }

    base["attributes"][@bc_name]["cinder_instance"] = find_dep_proposal("cinder")
    base["attributes"][@bc_name]["nova_instance"] = find_dep_proposal("nova")
    base["attributes"][@bc_name]["keystone_instance"] = find_dep_proposal("keystone")
    base["attributes"][@bc_name]["glance_instance"] = find_dep_proposal("glance")

    @logger.debug("SES create_proposal: exiting")
    base
  end

  def validate_proposal_after_save(proposal)

    super
  end

  def apply_role_pre_chef_call(old_role, role, all_nodes)
    @logger.debug("Cinder apply_role_pre_chef_call: entering #{all_nodes.inspect}")

    @logger.debug("Cinder apply_role_pre_chef_call: leaving")
  end
