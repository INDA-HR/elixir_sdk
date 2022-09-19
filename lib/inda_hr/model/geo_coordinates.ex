# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.GeoCoordinates do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Details",
    :"Value"
  ]

  @type t :: %__MODULE__{
    :"Details" => inda_hr.Model.SlimBaseDetails.t | nil,
    :"Value" => inda_hr.Model.GeoLocation.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.GeoCoordinates do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Details", :struct, inda_hr.Model.SlimBaseDetails, options)
    |> deserialize(:"Value", :struct, inda_hr.Model.GeoLocation, options)
  end
end

