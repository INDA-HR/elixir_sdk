# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ValueModelInt do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Value
  ]

  @type t :: %__MODULE__{
    :Value => integer()
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ValueModelInt do
  def decode(value, _options) do
    value
  end
end
