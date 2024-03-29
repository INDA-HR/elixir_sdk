# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.ClassificationMappingEscoResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ESCOCode,
    :ESCOOccupation,
    :"MappingO*NET",
    :MappingISCO,
    :MappingISTAT
  ]

  @type t :: %__MODULE__{
    :ESCOCode => String.t,
    :ESCOOccupation => String.t | nil,
    :"MappingO*NET" => [inda_hr.Model.OnetMapping.t] | nil,
    :MappingISCO => [inda_hr.Model.IscoMapping.t] | nil,
    :MappingISTAT => [inda_hr.Model.IstatMapping.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ClassificationMappingEscoResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"MappingO*NET", :list, inda_hr.Model.OnetMapping, options)
    |> deserialize(:MappingISCO, :list, inda_hr.Model.IscoMapping, options)
    |> deserialize(:MappingISTAT, :list, inda_hr.Model.IstatMapping, options)
  end
end

