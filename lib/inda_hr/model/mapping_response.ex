# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.MappingResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :DocType,
    :Indexname,
    :Custom,
    :CustomFields,
    :Multiplier
  ]

  @type t :: %__MODULE__{
    :DocType => String.t | nil,
    :Indexname => String.t,
    :Custom => boolean(),
    :CustomFields => map() | nil,
    :Multiplier => float() | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.MappingResponse do
  def decode(value, _options) do
    value
  end
end
