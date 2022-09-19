# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.EscoJobtitleResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Hits",
    :"ESCOClassification"
  ]

  @type t :: %__MODULE__{
    :"Hits" => integer() | nil,
    :"ESCOClassification" => [inda_hr.Model.OptionalEscoOccupationMatch.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.EscoJobtitleResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ESCOClassification", :list, inda_hr.Model.OptionalEscoOccupationMatch, options)
  end
end

