# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ClassificationMappingIstatResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ISTATCode",
    :"ISTATOccupation",
    :"MappingO*NET",
    :"MappingISCO",
    :"MappingESCO"
  ]

  @type t :: %__MODULE__{
    :"ISTATCode" => String.t,
    :"ISTATOccupation" => String.t | nil,
    :"MappingO*NET" => [inda_hr.Model.OnetMapping.t] | nil,
    :"MappingISCO" => [inda_hr.Model.IscoMapping.t] | nil,
    :"MappingESCO" => [inda_hr.Model.EscoMapping.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ClassificationMappingIstatResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"MappingO*NET", :list, inda_hr.Model.OnetMapping, options)
    |> deserialize(:"MappingISCO", :list, inda_hr.Model.IscoMapping, options)
    |> deserialize(:"MappingESCO", :list, inda_hr.Model.EscoMapping, options)
  end
end

