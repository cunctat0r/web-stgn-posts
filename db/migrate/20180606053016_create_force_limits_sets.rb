class CreateForceLimitsSets < ActiveRecord::Migration[5.2]
  def change
    create_table :force_limits_sets do |t|
      t.float :free_weight
      t.float :detection_limit
      t.float :warning_limit
      t.float :alarm_limit
      t.references :force_sensor, foreign_key: true

      t.timestamps
    end
  end
end
