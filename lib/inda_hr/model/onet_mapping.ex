# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

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

