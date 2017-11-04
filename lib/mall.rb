class Mall
  attr_reader :stores

  def initialize
    @stores = []
  end

  def open_store(store)
    @stores << store
  end

end
