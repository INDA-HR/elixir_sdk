# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.Jobfunctions do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :JobFunction,
    :Frequency
  ]

  @type t :: %__MODULE__{
    :JobFunction => String.t | nil,
    :Frequency => float() | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.Jobfunctions do
  def decode(value, _options) do
    value
  end
end
