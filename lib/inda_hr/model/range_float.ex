# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.RangeFloat do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Range
  ]

  @type t :: %__MODULE__{
    :Range => IndaHr.Model.Range.t
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.RangeFloat do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Range, :struct, IndaHr.Model.Range, options)
  end
end
