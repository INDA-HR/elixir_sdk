# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.EscoOccupationValue do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :PreferredLabel,
    :Code
  ]

  @type t :: %__MODULE__{
    :PreferredLabel => String.t | nil,
    :Code => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.EscoOccupationValue do
  def decode(value, _options) do
    value
  end
end

