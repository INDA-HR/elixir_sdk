# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.OptionalDistanceLearningDetails do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :AdditionalInfo
  ]

  @type t :: %__MODULE__{
    :AdditionalInfo => String.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.OptionalDistanceLearningDetails do
  def decode(value, _options) do
    value
  end
end
