# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Degrees do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"pre-Bachelor",
    :"Bachelor",
    :"Master",
    :"Doctoral"
  ]

  @type t :: %__MODULE__{
    :"pre-Bachelor" => boolean() | nil,
    :"Bachelor" => boolean() | nil,
    :"Master" => boolean() | nil,
    :"Doctoral" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Degrees do
  def decode(value, _options) do
    value
  end
end

