module Vultr
  class UsersResource < Resource
    def list(per_page: nil, cursor: nil)
      prepared_params = { per_page: per_page, cursor: cursor }.compact
      Collection.from_response get_request("users", params: prepared_params), key: "users", type: User
    end

    def create(**attrs)
      User.new post_request("users", body: attrs).body.dig("user")
    end

    # retrieve method name set expectation that it
    # has to complete some amount of work before returning the result
    # e.g., API request
    def retrieve(user_id:)
      User.new get_request("users/#{user_id}").body.dig("user")
    end

    def update(user_id:, **attrs)
      patch_request("users/#{user_id}", body: attrs)

      true
    end

    def delete(user_id:)
      delete_request("users/#{user_id}")

      true
    end
  end
end
