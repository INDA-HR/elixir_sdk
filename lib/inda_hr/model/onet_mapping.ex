# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OnetMapping do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"O*NETCode",
    :"O*NETOccupation"
  ]

  @type t :: %__MODULE__{
    :"O*NETCode" => String.t | nil,
    :"O*NETOccupation" => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OnetMapping do
  def decode(value, _options) do
    value
  end
end

