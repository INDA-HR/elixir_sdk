# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Jobfunctions do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"JobFunction",
    :"Frequency"
  ]

  @type t :: %__MODULE__{
    :"JobFunction" => String.t | nil,
    :"Frequency" => float() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Jobfunctions do
  def decode(value, _options) do
    value
  end
end

