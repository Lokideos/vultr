# frozen_string_literal: true

require_relative "vultr/version"

module Vultr
  autoload :Client, "vultr/client"
  autoload :Collection, "vultr/collection"
  autoload :Error, "vultr/error"
  autoload :Object, "vultr/object"
  autoload :Resource, "vultr/resource"

  autoload :Account, "vultr/objects/account"
  autoload :Instance, "vultr/objects/account"
  autoload :Plan, "vultr/objects/plan"

  autoload :AccountResource, "vultr/resources/account"
  autoload :PlansResource, "vultr/resources/plans"
end
