# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.BroaderLevelJobtitle do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ISCOcode,
    :Label
  ]

  @type t :: %__MODULE__{
    :ISCOcode => String.t | nil,
    :Label => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.BroaderLevelJobtitle do
  def decode(value, _options) do
    value
  end
end

