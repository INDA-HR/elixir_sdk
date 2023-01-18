# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.Document do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :File,
    :FileExt,
    :Filename
  ]

  @type t :: %__MODULE__{
    :File => String.t,
    :FileExt => String.t,
    :Filename => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Document do
  def decode(value, _options) do
    value
  end
end

