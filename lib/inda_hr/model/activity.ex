# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Activity do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Value",
    :"Tags"
  ]

  @type t :: %__MODULE__{
    :"Value" => String.t,
    :"Tags" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Activity do
  def decode(value, _options) do
    value
  end
end

