# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.SkillDetail do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Category,
    :ESCOClassification
  ]

  @type t :: %__MODULE__{
    :Category => String.t | nil,
    :ESCOClassification => inda_hr.Model.OptionalEscoSkillMatchCategorized.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.SkillDetail do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:ESCOClassification, :struct, inda_hr.Model.OptionalEscoSkillMatchCategorized, options)
  end
end

