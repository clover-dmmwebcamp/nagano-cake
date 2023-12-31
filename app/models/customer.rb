class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cart_products
  has_many :orders
  has_many :addresses
  
  #バリデーション
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :postcode, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true
  
  #会員フルネーム
  def full_name
    last_name + first_name
  end
  
  def full_name_kana
    last_name_kana + first_name_kana
  end
  
  #退会済みユーザーが同じアカウントでログインできないように制限
  def active_for_authentication?
    super && (is_deleted == false)
  end
end
