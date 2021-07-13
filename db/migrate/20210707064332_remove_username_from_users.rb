# frozen_string_literal: true

class RemoveUsernameFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :username, :string
  end
end
