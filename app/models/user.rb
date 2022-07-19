class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum user_type: { Manager: 0, Developer: 1, QA: 2}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :project_users
  has_many :projects, through: :project_users
  has_many :qa_bugs, foreign_key: 'creator_id', class_name: "Bug"
  has_many :dev_bugs, foreign_key: 'developer_id', class_name: "Bug"
  has_many :manager_projects, foreign_key: 'manager_id', class_name: "Project"

  validates :name, presence: true
  validates :user_type, presence: true
  


  def manager?
    user_type == 'Manager'
  end

  def qa?
    user_type == 'QA'
  end
  
  def developer?
    user_type == 'Developer'
  end
end
