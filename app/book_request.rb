class BookRequest < Sequel::Model
  def validate
    # errors.add(:title, "can't be blank") if title.empty?
  end
end
