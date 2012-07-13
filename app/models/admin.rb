class Admin < ActiveRecord::Base
  include Lolita::Configuration

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  lolita do
    list  do
      column :email
    end

    tab :content do
      field :email
      field :password, :string, :builder => :password
      field :password_confirmation, :string, :builder => :password
    end
  end
end
