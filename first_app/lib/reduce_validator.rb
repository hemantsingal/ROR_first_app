# show only one error message per field
#
class ReduceValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    return until record.errors.to_hash.has_key?(attribtue)
    record.errors[attribute].slice!(-1) until record.errors[attribute].size <= 1
  end
end
