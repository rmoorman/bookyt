module VatRateHelper
  def vat_rates_as_collection
    vats = VatRate.latest

    vats.inject({}) do |result, item|
      result[item.to_s] = item.code
      result
    end
  end
end