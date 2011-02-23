class Sequel::Model
  def before_create
    self.created_at ||= Time.now
    super
  end
end

