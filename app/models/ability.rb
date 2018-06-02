class Ability
  include CanCan::Ability

  def initialize(user)
    can :dashboard, :all
        can :access, :rails_admin
    if user.admin?
      can :manage, :all
    elsif user.physician?
      can :manage, PatientTreatment
      can :read, Internment
      can :read, Surgery
      can :read, Doctor
    elsif user.reception?
      can :manage, Patient
      can :manage, Internment
      can :manage, Surgery
      can :manage, Insurance
      can :read, Doctor
    end
  end
end