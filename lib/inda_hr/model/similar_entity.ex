# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.SimilarEntity do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Term,
    :Score
  ]

  @type t :: %__MODULE__{
    :Term => String.t,
    :Score => float()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.SimilarEntity do
  def decode(value, _options) do
    value
  end
end

