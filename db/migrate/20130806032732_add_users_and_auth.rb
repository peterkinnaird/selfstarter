class AddUsersAndAuth < ActiveRecord::Migration
  def up
  	create_table :authorizations do |t|
      t.string :provider
      t.integer :uid
      t.string :user
      t.timestamps
    end

    ##add columns to user table
    add_column :users, :authorization_id, :integer
    add_column :users, :t_nickname, :string
    add_column :users, :t_follow_count, :integer
    add_column :users, :twitter_json, :text
    add_column :users, :tweets_authorized, :integer
    add_column :users, :user_type, :string
    add_column :users, :t_access_token, :string
    add_column :users, :t_access_secret, :string
    add_column :users, :uid, :integer
  end

  def down
  	drop_table :authorizations
		remove_column :users, :authorization_id, :integer
    remove_column :users, :t_nickname, :string
    remove_column :users, :t_follow_count, :integer
    remove_column :users, :twitter_json, :text
    remove_column :users, :tweets_authorized, :integer
    remove_column :users, :user_type, :string
    remove_column :users, :t_access_token, :string
    remove_column :users, :t_access_secret, :string
    remove_column :users, :uid, :integer

  end
end
