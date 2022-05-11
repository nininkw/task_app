class ChangeDataWholeDayToAgendas < ActiveRecord::Migration[6.1]
  def change
    change_column :agendas, :whole_day, :boolean
  end
end
