class ChangeDefaultForMedicalOnSurveys < ActiveRecord::Migration
  def up
    change_column_default :surveys, :medical, default: 0
  end

  def down
    change_column_default :surveys, :medical, default: nil
  end
end
