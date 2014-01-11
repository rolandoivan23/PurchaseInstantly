class RemoveAuthlogicFieldsFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :login
    remove_column :clients, :fecha_alta
    remove_column :clients, :persistence_token
    remove_column :clients, :crypted_password
    remove_column :clients, :password_salt
    remove_column :clients, :single_access_token
    remove_column :clients, :perishable_token
    remove_column :clients, :login_count
    remove_column :clients, :failed_login_count
    remove_column :clients, :last_request_at
    remove_column :clients, :current_login_at
    remove_column :clients, :last_login_at
    remove_column :clients, :current_login_ip
    remove_column :clients, :last_login_ip
  end
end
