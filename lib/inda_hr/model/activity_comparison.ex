# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ActivityComparison do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Title",
    :"Code",
    :"Origin",
    :"Destination",
    :"Dif",
    :"DifAbs"
  ]

  @type t :: %__MODULE__{
    :"Title" => String.t | nil,
    :"Code" => String.t | nil,
    :"Origin" => float() | nil,
    :"Destination" => float() | nil,
    :"Dif" => float() | nil,
    :"DifAbs" => float() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ActivityComparison do
  def decode(value, _options) do
    value
  end
end

