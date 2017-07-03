class Question < ApplicationRecord
  has_many :options, dependent: :destroy
  accepts_nested_attributes_for :options, allow_destroy: true, :reject_if => proc { |a| a['option_url'].blank? }

  def options_for_form
    collection = options.where(question_id: id)
    collection.any? ? collection : options.build
  end
end
