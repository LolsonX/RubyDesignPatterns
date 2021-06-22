module Interface
  def method(name)
    define_method(name) { |*_| raise NotImplementedError, "Method #{name} is not implemented in class #{self.class.name}" }
  end

  def methods(*names)
    names.each do |name|
      method(name)
    end
  end
end
