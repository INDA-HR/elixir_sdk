# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.BaseLocationsLocation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :City,
    :Country,
    :GeoCoordinates,
    :CountryCode,
    :PostalCode,
    :StreetAddress,
    :County,
    :Region
  ]

  @type t :: %__MODULE__{
    :City => inda_hr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :Country => inda_hr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :GeoCoordinates => inda_hr.Model.ValueModelGeoLocation.t | nil,
    :CountryCode => inda_hr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :PostalCode => inda_hr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :StreetAddress => inda_hr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :County => inda_hr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :Region => inda_hr.Model.BaseBenefitsValueModelStrictStr.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.BaseLocationsLocation do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:City, :struct, inda_hr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:Country, :struct, inda_hr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:GeoCoordinates, :struct, inda_hr.Model.ValueModelGeoLocation, options)
    |> deserialize(:CountryCode, :struct, inda_hr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:PostalCode, :struct, inda_hr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:StreetAddress, :struct, inda_hr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:County, :struct, inda_hr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:Region, :struct, inda_hr.Model.BaseBenefitsValueModelStrictStr, options)
  end
end

