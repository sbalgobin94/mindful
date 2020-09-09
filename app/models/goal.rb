class Goal < ApplicationRecord
  belongs_to :user

  def status
    if self.goal_status == false
     p "In progress"
    else
      p "Completed"
    end
  end

end
