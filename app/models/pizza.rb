class Pizza < ActiveRecord::Base

  validates_presence_of :name

  after_initialize :defaults, unless: :persisted?
              # ":if => :new_record?" is equivalent in this context

  def defaults
    diameter= 12 if diameter.nil?
  end
end
