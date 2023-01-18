# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OptionalSlimJobAdLanguageDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :TextPositions,
    :RawValue,
    :RawValues,
    :Code,
    :Category
  ]

  @type t :: %__MODULE__{
    :TextPositions => [inda_hr.Model.TextPosition.t] | nil,
    :RawValue => String.t | nil,
    :RawValues => [inda_hr.Model.TextDetails.t] | nil,
    :Code => %{optional(String.t) => String.t} | nil,
    :Category => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalSlimJobAdLanguageDetails do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:TextPositions, :list, inda_hr.Model.TextPosition, options)
    |> deserialize(:RawValues, :list, inda_hr.Model.TextDetails, options)
  end
end

