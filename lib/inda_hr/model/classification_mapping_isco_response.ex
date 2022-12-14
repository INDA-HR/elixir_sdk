# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ClassificationMappingIscoResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ISCOCode",
    :"ISCOOccupation",
    :"MappingO*NET",
    :"MappingESCO",
    :"MappingISTAT"
  ]

  @type t :: %__MODULE__{
    :"ISCOCode" => String.t,
    :"ISCOOccupation" => String.t | nil,
    :"MappingO*NET" => [inda_hr.Model.OnetMapping.t] | nil,
    :"MappingESCO" => [inda_hr.Model.EscoMapping.t] | nil,
    :"MappingISTAT" => [inda_hr.Model.IstatMapping.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ClassificationMappingIscoResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"MappingO*NET", :list, inda_hr.Model.OnetMapping, options)
    |> deserialize(:"MappingESCO", :list, inda_hr.Model.EscoMapping, options)
    |> deserialize(:"MappingISTAT", :list, inda_hr.Model.IstatMapping, options)
  end
end

