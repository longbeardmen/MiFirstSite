class WallComment < ActiveRecord::Base
validates_presence_of :title
validates_presence_of :message
end
