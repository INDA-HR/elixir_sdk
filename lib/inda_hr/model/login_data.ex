# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.LoginData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Tenant",
    :"Password",
    :"Email"
  ]

  @type t :: %__MODULE__{
    :"Tenant" => String.t,
    :"Password" => String.t,
    :"Email" => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.LoginData do
  def decode(value, _options) do
    value
  end
end

