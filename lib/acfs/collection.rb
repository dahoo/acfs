require 'delegate'

require 'acfs/model/loadable'

module Acfs

  class Collection < ::Delegator
    include Model::Loadable
    include Acfs::Util::Callbacks

    def initialize
      super([])
    end

    def __getobj__
      @models
    end

    def __setobj__(obj)
      @models = obj
    end
  end
end
