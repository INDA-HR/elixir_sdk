# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.File do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Filename,
    :FileExt
  ]

  @type t :: %__MODULE__{
    :Filename => String.t | nil,
    :FileExt => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.File do
  def decode(value, _options) do
    value
  end
end

