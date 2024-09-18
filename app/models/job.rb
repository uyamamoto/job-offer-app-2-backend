class Job < ApplicationRecord
  # title, categoryは必須
  validates :title, presence: true
  validates :category, presence: true
  # salaryは必須かつ数値で0より大きいことを検証する
  validates :salary, presence: true, numericality: { greater_than: 0 }
end
