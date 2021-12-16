class AddPasswordResetColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :pasiens, :reset_password_token, :string
    add_column :pasiens, :reset_password_sent_at, :datetime
  end
end
