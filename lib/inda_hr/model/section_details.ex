# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.SectionDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Language",
    :"Weight"
  ]

  @type t :: %__MODULE__{
    :"Language" => String.t | nil,
    :"Weight" => float() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.SectionDetails do
  def decode(value, _options) do
    value
  end
end

