class Speaker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable

        validates :password,length:{ minimum: 6 }
        validates :password, confirmation: true
       
        with_options presence:true do
          validates :first_name,:last_name,format:{ with: /\A[ぁ-んァ-ン一-龥]/,message:"は全角で入力してください。"}
          validates :first_name_kana,:last_name_kana,format:{with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力して下さい。"}
          validates :password, format: { with: /\A[a-z0-9]+\z/i, message: "は半角英数で入力してください。"}
          validates :nickname,:email,:first_name,:last_name,:birth_date
        end
       
          has_many :resumes
      #    has_many :purchases
      #    has_one :card, dependent: :destroy
      #  end
end
