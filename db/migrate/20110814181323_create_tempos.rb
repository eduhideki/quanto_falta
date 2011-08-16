class CreateTempos < ActiveRecord::Migration
  def self.up
    create_table :tempos do |t|

      t.string :evento
      t.date :data_evento
      t.timestamps
    end
  end

  def self.down
    drop_table :tempos
  end
end
