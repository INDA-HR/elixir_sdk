# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.IdEntityErrors do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Error",
    :"EntityID"
  ]

  @type t :: %__MODULE__{
    :"Error" => String.t,
    :"EntityID" => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.IdEntityErrors do
  def decode(value, _options) do
    value
  end
end
