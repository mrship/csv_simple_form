class AddAdditionalInformation < ActiveRecord::Migration
  def up
    add_column :basics, :additional_information, :text
  end

  def down
    remove_column :basics, :additional_information
  end
end
