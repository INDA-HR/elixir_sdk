# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.SlimDocument do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Filename"
  ]

  @type t :: %__MODULE__{
    :"Filename" => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.SlimDocument do
  def decode(value, _options) do
    value
  end
end

