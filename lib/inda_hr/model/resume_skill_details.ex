# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ResumeSkillDetails do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :TextPositions,
    :RawValue,
    :RawValues,
    :IsValidated,
    :EntityType,
    :ProficiencyLevel,
    :Category,
    :Code,
    :Score
  ]

  @type t :: %__MODULE__{
    :TextPositions => [IndaHr.Model.TextPosition.t] | nil,
    :RawValue => String.t | nil,
    :RawValues => [IndaHr.Model.TextDetails.t] | nil,
    :IsValidated => boolean() | nil,
    :EntityType => String.t | nil,
    :ProficiencyLevel => String.t | nil,
    :Category => String.t | nil,
    :Code => %{optional(String.t) => String.t} | nil,
    :Score => float()
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ResumeSkillDetails do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:TextPositions, :list, IndaHr.Model.TextPosition, options)
    |> deserialize(:RawValues, :list, IndaHr.Model.TextDetails, options)
  end
end
