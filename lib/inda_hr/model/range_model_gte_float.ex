# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.RangeModelGteFloat do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"GTE"
  ]

  @type t :: %__MODULE__{
    :"GTE" => float()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RangeModelGteFloat do
  def decode(value, _options) do
    value
  end
end
