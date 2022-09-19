# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ResumeLocationsLocation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"City",
    :"Country",
    :"GeoCoordinates",
    :"CountryCode",
    :"PostalCode",
    :"StreetAddress",
    :"County",
    :"Region"
  ]

  @type t :: %__MODULE__{
    :"City" => inda_hr.Model.BaseModelsName.t | nil,
    :"Country" => inda_hr.Model.BaseModelsName.t | nil,
    :"GeoCoordinates" => inda_hr.Model.GeoCoordinates.t | nil,
    :"CountryCode" => inda_hr.Model.Text.t | nil,
    :"PostalCode" => inda_hr.Model.Text.t | nil,
    :"StreetAddress" => inda_hr.Model.Text.t | nil,
    :"County" => inda_hr.Model.BaseModelsName.t | nil,
    :"Region" => inda_hr.Model.BaseModelsName.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ResumeLocationsLocation do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"City", :struct, inda_hr.Model.BaseModelsName, options)
    |> deserialize(:"Country", :struct, inda_hr.Model.BaseModelsName, options)
    |> deserialize(:"GeoCoordinates", :struct, inda_hr.Model.GeoCoordinates, options)
    |> deserialize(:"CountryCode", :struct, inda_hr.Model.Text, options)
    |> deserialize(:"PostalCode", :struct, inda_hr.Model.Text, options)
    |> deserialize(:"StreetAddress", :struct, inda_hr.Model.Text, options)
    |> deserialize(:"County", :struct, inda_hr.Model.BaseModelsName, options)
    |> deserialize(:"Region", :struct, inda_hr.Model.BaseModelsName, options)
  end
end

