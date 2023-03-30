require_relative './base_decorator'
class TrimDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end
