class CreateTemperatureSensors < ActiveRecord::Migration[5.2]
  def change
    create_table :temperature_sensors do |t|
      t.integer :sensor_number
      t.string :phase
      t.integer :chain
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
