# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalPhoneNumber do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"CountryCode",
    :"CountryDialling",
    :"DialNumber"
  ]

  @type t :: %__MODULE__{
    :"CountryCode" => String.t | nil,
    :"CountryDialling" => String.t | nil,
    :"DialNumber" => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalPhoneNumber do
  def decode(value, _options) do
    value
  end
end
