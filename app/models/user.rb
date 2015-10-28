class User < ActiveRecord::Base
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :authenticable, :polymorphic => true, :dependent => :destroy, :touch => true

  delegate :admin?, :to => :role

  module Roles
    # Public: Is user admin?
    # Returns: Boolean
    def admin?
      role_name == :admin
    end

    # Public: user role name
    # Returns: Symbol
    def role_name
      authenticable_type.underscore.to_sym
    end
  end
  include Roles
end
