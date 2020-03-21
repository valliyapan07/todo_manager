class User < ActiveRecord::Base
  def to_displayable_string
    "#{id}. #{name} #{email} #{password}"
  end
end
