class Agenda < ApplicationRecord
  validate :start_finish_check

  private

  def start_finish_check 
    if self.finish_day <= self.start_day
      errors.add(:finish_day, "は開始日より前の日付は登録できません。")  
    end
  end

end
