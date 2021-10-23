module Vultr
  class PlansResource < Resource
    def list(per_page: nil, cursor: nil)
      prepared_params = { per_page: per_page, cursor: cursor }.compact
      Collection.from_response get_request("plans", params: prepared_params), key: "plans", type: Plan
    end
  end
end
