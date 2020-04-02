# frozen_string_literal: true

module SalesHelper
  def active_sale?
    Sale.active.any?
  end
end
