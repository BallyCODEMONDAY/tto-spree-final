class TaxonDepthValidator < ActiveModel::Validator
  def validate(record)
    if record.parent.present? && record.parent.depth >= 2
      record.errors.add(:depth, "reached the taxon depth maximum")
    end
  end
end
