class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
def self.search(search)
if search
  find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
else
  find(:all)
end
end
