# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.PreferredDurationValue do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Value"
  ]

  @type t :: %__MODULE__{
    :"Value" => integer() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.PreferredDurationValue do
  def decode(value, _options) do
    value
  end
end

