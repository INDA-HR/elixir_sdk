# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.RangeModelDatetime do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :GTE,
    :LTE
  ]

  @type t :: %__MODULE__{
    :GTE => DateTime.t,
    :LTE => DateTime.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RangeModelDatetime do
  def decode(value, _options) do
    value
  end
end

