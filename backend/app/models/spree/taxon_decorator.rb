Spree::Taxon.class_eval do
  validates_with TaxonDepthValidator
end
