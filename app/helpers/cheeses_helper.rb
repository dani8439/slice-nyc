module CheesesHelper

  def sorted
    self.sort_by(&:name)
  end
end
