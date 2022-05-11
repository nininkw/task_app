class CreateAgendas < ActiveRecord::Migration[6.1]
  def change
    create_table :agendas do |t|
      t.string :title
      t.date :start_day
      t.date :finish_day
      t.string :whole_day

      t.timestamps
    end
  end
end
