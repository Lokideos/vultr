# frozen_string_literal: true

require_relative "vultr/version"

module Vultr
  autoload :Client, "vultr/client"
  autoload :Collection, "vultr/collection"
  autoload :Error, "vultr/error"
  autoload :Object, "vultr/object"

  autoload :Account, "vultr/objects/account"
  autoload :Instance, "vultr/objects/account"
  autoload :Plan, "vultr/objects/plan"
end
