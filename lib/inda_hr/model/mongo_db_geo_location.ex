# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.MongoDbGeoLocation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Lat",
    :"Lon"
  ]

  @type t :: %__MODULE__{
    :"Lat" => float(),
    :"Lon" => float()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MongoDbGeoLocation do
  def decode(value, _options) do
    value
  end
end
