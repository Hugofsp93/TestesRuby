if Rails.env.production?
  class Object
    def byebug; end
  end
end