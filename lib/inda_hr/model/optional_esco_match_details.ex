# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalEscoMatchDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"PreprocessedInput",
    :"PreprocessedESCOClassification"
  ]

  @type t :: %__MODULE__{
    :"PreprocessedInput" => [AnyType] | nil,
    :"PreprocessedESCOClassification" => [AnyType] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalEscoMatchDetails do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"PreprocessedInput", :list, inda_hr.Model.AnyType, options)
    |> deserialize(:"PreprocessedESCOClassification", :list, inda_hr.Model.AnyType, options)
  end
end

