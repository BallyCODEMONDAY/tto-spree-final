module Spree
  module Calculator::Shipping
    class CustomCalculator < Spree::ShippingCalculator
      def self.description
        "Custom Shipping Calculator"
      end

      def compute_package(package)
        total_weight = package.contents.sum(&:weight)
        shipping_cost = cost_by_weight(total_weight)

        shipping_cost
      end

      def cost_by_weight(total_weight)
        case total_weight
        when 0..9.99
          100
        when 10..14.99
          200
        when 15..19.99
          300
        when 20..29.99
          330
        when 30..49.99
          500
        else
          1000
        end
      end
    end
  end
end
