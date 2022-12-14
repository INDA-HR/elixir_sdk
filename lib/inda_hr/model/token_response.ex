# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.TokenResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Token",
    :"TokenType",
    :"ExpiresIn"
  ]

  @type t :: %__MODULE__{
    :"Token" => String.t,
    :"TokenType" => String.t | nil,
    :"ExpiresIn" => integer() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.TokenResponse do
  def decode(value, _options) do
    value
  end
end

