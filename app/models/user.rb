class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :store

  validates :family_name, presence: true
  validates :first_name,  presence: true
  validates :gender,      presence: {massage: "選択して下さい"}
  validates :age,         presence: {massage: "選択して下さい"}
  validates :email,       presence: true, uniqueness: {case_sensitive: true}, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

  enum gender: {
    "男性": 1,
    "女性": 2,
    "その他": 3
  }, _prefix: true

  enum age: {
    "20": 1, "21": 2, "22": 3, "23": 4, "24": 5, "25": 6, "26": 7, "27": 8, "28": 9, "29": 10,
    "30": 11, "31": 12, "32": 13, "33": 14, "34": 15, "35": 16, "36": 17, "37": 18, "38": 19, "39": 20,
    "40": 21, "41": 22, "42": 23, "43": 24, "44": 25, "45": 26, "46": 27, "47": 28, "48": 29, "49": 30,
    "50": 31, "51": 32, "52": 33, "53": 34, "54": 35, "55": 36, "56": 37, "57": 38, "58": 39, "59": 40,
    "60": 41, "61": 42, "62": 43, "63": 44, "64": 45, "65": 46, "66": 47, "67": 48, "68": 49, "69": 50,
    "70": 51, "71": 52, "72": 53, "73": 54, "74": 55, "75": 56, "76": 57, "77": 58, "78": 59, "79": 60,
    "80": 61, "81": 62, "82": 63, "83": 64, "84": 65, "85": 66, "86": 67, "87": 68, "88": 69, "89": 70,
    "90": 71, "91": 72, "92": 73, "93": 74, "94": 75, "95": 76, "96": 77, "97": 78, "98": 79, "99": 80, "100": 81
  }, _prefix: true
end
