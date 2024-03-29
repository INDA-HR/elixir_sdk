# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.TextFile do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Language,
    :Filename,
    :FileExt
  ]

  @type t :: %__MODULE__{
    :Language => String.t | nil,
    :Filename => String.t | nil,
    :FileExt => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.TextFile do
  def decode(value, _options) do
    value
  end
end

