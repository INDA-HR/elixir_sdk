# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.RangeFloat do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Range
  ]

  @type t :: %__MODULE__{
    :Range => inda_hr.Model.Range.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RangeFloat do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Range, :struct, inda_hr.Model.Range, options)
  end
end

