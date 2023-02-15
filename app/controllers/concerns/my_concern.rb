# typed: true

module MyConcern
  extend T::Helpers
  extend T::Sig

  extend ActiveSupport::Concern

  requires_ancestor { ApplicationController }

  included do
    before_action(:do_the_thing)
  end

  def do_the_thing
    request.host
  end
end
