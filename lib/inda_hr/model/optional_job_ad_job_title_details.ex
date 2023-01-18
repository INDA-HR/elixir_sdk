# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OptionalJobAdJobTitleDetails do
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
    :Weight
  ]

  @type t :: %__MODULE__{
    :TextPositions => [inda_hr.Model.TextPosition.t] | nil,
    :RawValue => String.t | nil,
    :RawValues => [inda_hr.Model.TextDetails.t] | nil,
    :IsValidated => boolean() | nil,
    :EntityType => String.t | nil,
    :ProficiencyLevel => String.t | nil,
    :Category => String.t | nil,
    :Code => %{optional(String.t) => String.t} | nil,
    :Weight => float() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalJobAdJobTitleDetails do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:TextPositions, :list, inda_hr.Model.TextPosition, options)
    |> deserialize(:RawValues, :list, inda_hr.Model.TextDetails, options)
  end
end

