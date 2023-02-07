# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.OptionalSlimJobAdLanguageDetails do
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
    :TextPositions => [IndaHr.Model.TextPosition.t] | nil,
    :RawValue => String.t | nil,
    :RawValues => [IndaHr.Model.TextDetails.t] | nil,
    :Code => %{optional(String.t) => String.t} | nil,
    :Category => String.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.OptionalSlimJobAdLanguageDetails do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:TextPositions, :list, IndaHr.Model.TextPosition, options)
    |> deserialize(:RawValues, :list, IndaHr.Model.TextDetails, options)
  end
end
