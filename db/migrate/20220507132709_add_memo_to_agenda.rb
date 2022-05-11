class AddMemoToAgenda < ActiveRecord::Migration[6.1]
  def change
    add_column :agendas, :memo, :text
  end
end
