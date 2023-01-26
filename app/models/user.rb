class User < ApplicationRecord

  def full_name
    [first_name, last_name].join(' ')
  end

  def last_name_first
    [last_name, first_name].join(', ')
  end

  def abbrev_name
    first-initial = first_name.chars.first + ". "
    [first_name, last_name].join(' ')
  end
  
end