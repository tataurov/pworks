class Ability
  include CanCan::Ability

  # user - AdminUser object
  def initialize(user)
    @user = user
    public_send user.role_name
  end

  # Admin abilities
  def admin
    can :manage, :all
  end
end
