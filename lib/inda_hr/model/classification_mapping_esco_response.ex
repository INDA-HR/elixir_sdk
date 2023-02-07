# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ClassificationMappingEscoResponse do
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
    :"MappingO*NET" => [IndaHr.Model.OnetMapping.t] | nil,
    :MappingISCO => [IndaHr.Model.IscoMapping.t] | nil,
    :MappingISTAT => [IndaHr.Model.IstatMapping.t] | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ClassificationMappingEscoResponse do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"MappingO*NET", :list, IndaHr.Model.OnetMapping, options)
    |> deserialize(:MappingISCO, :list, IndaHr.Model.IscoMapping, options)
    |> deserialize(:MappingISTAT, :list, IndaHr.Model.IstatMapping, options)
  end
end
