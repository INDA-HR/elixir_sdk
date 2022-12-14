# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.StandardDataItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Code",
    :"Value",
    :"Language"
  ]

  @type t :: %__MODULE__{
    :"Code" => String.t,
    :"Value" => String.t,
    :"Language" => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.StandardDataItem do
  def decode(value, _options) do
    value
  end
end

