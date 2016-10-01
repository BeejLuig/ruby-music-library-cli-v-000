module Concerns::Findable
  def find_by_name(name)
    self.all.detect {|o| o.name == name}
  end

  def find_or_create_by_name(name)
    if self.find_by_name(name) == nil
      self.new(name)
    else
      self.find_by_name(name)
    end
  end

end