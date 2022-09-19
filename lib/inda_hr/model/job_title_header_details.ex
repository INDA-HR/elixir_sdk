# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.JobTitleHeaderDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Language",
    :"Weight",
    :"Category"
  ]

  @type t :: %__MODULE__{
    :"Language" => String.t | nil,
    :"Weight" => float() | nil,
    :"Category" => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobTitleHeaderDetails do
  def decode(value, _options) do
    value
  end
end

