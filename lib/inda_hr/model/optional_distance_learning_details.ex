# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalDistanceLearningDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"AdditionalInfo"
  ]

  @type t :: %__MODULE__{
    :"AdditionalInfo" => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalDistanceLearningDetails do
  def decode(value, _options) do
    value
  end
end

